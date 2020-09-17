% After Crisis

clear all;
clc;
close all;

after = load('after_crisis.csv');

[row, col] = size(after);

currentData = zeros(row-1,col);

for i = 1:row-1
    currentData(i,:) = log(after(i+1,:)./after(i,:));
end

[m,n] = size(currentData);

for j = 1:n
    avg = mean(currentData(:,j));
    centeredData(:,j) = currentData(:,j) - avg;
end

sigma = (1/m)*(centeredData')*(centeredData);
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

figure(1);
histn(D_sorted,0,0.1,20);
hold on;
plot(d,P_rcm,'-r','LineWidth',2);
title('Empirical Eigenvalue Distribution (After Crisis)');
xlabel('\lambda');
ylabel('\rho(\lambda)');
legend('Eigenvalues Distribution \rho(\lambda) ','\rho_{rm}(\lambda)');
set(gcf,'color','w');
grid on;

%% Random W

A = randn(m,n);
W = (1/m)*(A')*(A);
[W_eigenVector, W_eigenValue] = eig(W);
[W_eigenValue_Sorted, W_eigenValue_Index] = sort(diag(W_eigenValue),'descend');
W_eigenVector_Sorted = W_eigenVector(:,W_eigenValue_Index);

figure(2);
histn(W_eigenValue_Sorted,0,0.1,max(W_eigenValue_Sorted));
hold on;
plot(d,P_rcm,'-r','LineWidth',2);
hold off;
title('Empirical Eigenvalue Distribution of R');
xlabel('\lambda');
ylabel('\rho(\lambda)');
legend('Eigenvalues Distribution \rho(\lambda) ','\rho_{rm}(\lambda)');
set(gcf,'color','w');
grid on;

%% Shuffled 
for i = 1:n
    currentData_shuffle(:,i) = centeredData(randperm(m),i);
end

sigma_shuffle = (1/m)*(currentData_shuffle')*(currentData_shuffle);
D_shuffle = diag(diag(sigma_shuffle));
Corr_shuffle = (D_shuffle^(-1/2))*(sigma_shuffle)*(D_shuffle^(-1/2));

[V_shuffle,D_shuffle] = eig(Corr_shuffle);
[D_sorted_shuffle,D_index_shuffle] = sort(diag(D_shuffle),'descend');
V_sorted_shuffle = V_shuffle(:,D_index_shuffle);

figure(3);
histn(D_sorted_shuffle,0,0.1,max(D_sorted_shuffle));
hold on;
plot(d,P_rcm,'-r','LineWidth',2);
title('Empirical Eigenvalue Distribution of C_{shuffle} (After Crisis)');
xlabel('\lambda');
ylabel('\rho(\lambda)');
legend('Eigenvalues Distribution \rho(\lambda) ','\rho_{rm}(\lambda)');
set(gcf,'color','w');
grid on;

%% Market Removal 
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
avg_corr = mean(Corr(:));
std_corr = std(Corr(:));

figure(4);
histn(D_sorted_msa,0,0.1,10);
hold on;
plot(d,P_rcm,'-r','LineWidth',2);
title('Eigenvalue Distribution Market Mode Removal (After Crisis)');
xlabel('\lambda');
ylabel('\rho(\lambda)');
legend('Eigenvalues Distribution \rho(\lambda) ','\rho_{rm}(\lambda)');
set(gcf,'color','w');
grid on;

v = -4:0.1:4;
p_v = (1/sqrt(2*pi)).*exp((-1.*(v.^2))./2);
k = 1;

w_k = W_eigenVector_Sorted(:,k);
figure(5);
histn(sqrt(n)*(w_k),-4,0.1,4);
hold on; 
plot(v,p_v,'-r','LineWidth',2);
hold off;
title(['Largest Eigenvector u_{',num2str(k),'} Distribtuion of R']);
xlabel('Eigenvector components');
ylabel('\rho(u)');
legend(['Eigenvector u_{',num2str(k),'} Distribution'],'\rho_{rm}(u)');
set(gcf,'color','w');
grid on;

v = -4:0.1:4;
p_v = (1/sqrt(2*pi)).*exp((-1.*(v.^2))./2);
k = 1;

figure(6);
v_k_shuffle = V_sorted_shuffle(:,k);
figure(6);
histn(sqrt(n)*(v_k_shuffle),-4,0.1,4);
hold on; 
plot(v,p_v,'-r','LineWidth',2);
hold off;
title(['Largest Eigenvector u_{',num2str(k),'} Distribtuion of C_{shuffle} (After Crisis)']);
xlabel('Eigenvector components');
ylabel('\rho(u)');
legend(['Eigenvector u_{',num2str(k),'} Distribution'],'\rho_{rm}(u)');
set(gcf,'color','w');
grid on;