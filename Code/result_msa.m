function [sigma_msa,Corr_msa,d,P_rcm,D_sorted_msa,V_sorted_msa,m,n] = result_msa(a)
[row, col] = size(a);

currentData = zeros(row-1,col);

for i = 1:row-1
    A(i,:) = log(a(i+1,:)./a(i,:));
end

[m,n] = size(currentData);


for j = 1:n
    avg = mean(A(:,j));
    currentData(:,j) = A(:,j) - avg;
end

sigma = (1/m)*(currentData')*(currentData);
D = diag(diag(sigma));
Corr = (D^(-1/2))*(sigma)*(D^(-1/2));


Q = m/n;
d_max = 1+(1/Q)+2*(sqrt(1/Q));
d_min = 1+(1/Q)-2*(sqrt(1/Q));
d = linspace(d_min,d_max);
P_rcm = (Q/(2*pi)).*(sqrt((d_max-d).*(d-d_min))./d);


[V,D] = eig(Corr);
[D_sorted,D_index] = sort(diag(D),'descend');
V_sorted = V(:,D_index);

V_high = V_sorted(:,1);
M_proj = currentData * V_high;
H = [ones(m,1) M_proj];
W = inv(H'*H);
p = W*H'*currentData;
msa_clean = currentData - M_proj*p(2,:); 

for j = 1:n
    avg_msa = mean(msa_clean(:,j));
    centered_msa(:,j) = msa_clean(:,j) - avg_msa;
end

sigma_msa = (1/m)*(centered_msa')*(centered_msa);
D_msa = diag(diag(sigma_msa));
Corr_msa = (D_msa^(-1/2))*(sigma_msa)*(D_msa^(-1/2));

[V_msa,D_msa] = eig(Corr_msa);
[D_sorted_msa,D_index_msa] = sort(diag(D_msa),'descend');
V_sorted_msa = V_msa(:,D_index_msa);

end
