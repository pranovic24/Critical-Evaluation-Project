function [sigma,Corr,d,P_rcm,D_sorted,V_sorted,m,n,volatility] = result(a)

[row, col] = size(a);

currentData = zeros(row-1,col);

for i = 1:row-1
    A(i,:) = log(a(i+1,:)./a(i,:));
end

[m,n] = size(currentData);


for j = 1:n
    avg = mean(A(:,j));
    currentData(:,j) = A(:,j) - avg;
%     variance = sum(currentData(:,j).^2)/m;
%     currentData(:,j) = currentData(:,j)/sqrt(variance);
end

sigma = (1/m)*(currentData')*(currentData);
D = diag(diag(sigma));
Corr = (D^(-1/2))*(sigma)*(D^(-1/2));
volatility = std(A);

Q = m/n;
d_max = 1+(1/Q)+2*(sqrt(1/Q));
d_min = 1+(1/Q)-2*(sqrt(1/Q));
d = linspace(d_min,d_max);
P_rcm = (Q/(2*pi)).*(sqrt((d_max-d).*(d-d_min))./d);


[V,D] = eig(Corr);
[D_sorted,D_index] = sort(diag(D),'descend');
V_sorted = V(:,D_index);


% figure(1);
% histn(D_sorted,0,0.1,max(D_sorted));
% hold on;
% plot(d,P_rcm,'-r','LineWidth',2);
% hold off;
% xlabel('Eigenvalue (\lambda)');
% ylabel('Probability Density P(\lambda)');
% set(gcf,'color','w');
% grid on;

% IPR = sum(V_sorted.^4);
% figure(2);
% loglog(D_sorted,IPR,'-o');

end