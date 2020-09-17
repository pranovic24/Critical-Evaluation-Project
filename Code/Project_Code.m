close all;
clear all; 

before = load('before_crisis.csv');
during = load('during_crisis.csv');
after = load('after_crisis.csv');

% % IPR = sum(V_sorted.^4);
% % figure(2);
% % loglog(D_sorted,IPR,'-o');

% Market Mode Removal Code and Non Maket Mode Removal Code in same file

% Multiple modifications made on this file

%Uncomment to obtain Non Market Mode Removal Code and uncomment the titles
%Done first and then commented
[sigma_Before,Corr_Before,d_Before,P_rcmBefore,D_sortedBefore,V_sortedBefore,m_Before,n_Before] = result(before);
[sigma_During,Corr_During,d_During,P_rcmDuring,D_sortedDuring,V_sortedDuring,m_During,n_During] = result(during);
[sigma_After,Corr_After,d_After,P_rcmAfter,D_sortedAfter,V_sortedAfter,m_After,n_After] = result(after);

% Market Mode Removal
% Comment the next three lines when running the Non Market Mode Removal
% Code and comment the titles with "Removal of Market Mode mentioned"
% [sigma_Before,Corr_Before,d_Before,P_rcmBefore,D_sortedBefore,V_sortedBefore,m_Before,n_Before] = result_msa(before);
% [sigma_During,Corr_During,d_During,P_rcmDuring,D_sortedDuring,V_sortedDuring,m_During,n_During] = result_msa(during);
% [sigma_After,Corr_After,d_After,P_rcmAfter,D_sortedAfter,V_sortedAfter,m_After,n_After] = result_msa(after);

A = randn(m_After,n_After);
W = (1/m_After)*(A')*(A);
[W_eigenVector, W_eigenValue] = eig(W);
[W_eigenValue_Sorted, W_eigenValue_Index] = sort(diag(W_eigenValue),'descend');
W_eigenVector_Sorted = W_eigenVector(:,W_eigenValue_Index);

figure(12);
plot(V_sortedBefore(:,1),'-o');
hold on; 
plot(V_sortedDuring(:,1),'-s');
hold on; 
plot(V_sortedAfter(:,1),'-d');
xticks([1 2 3 4 5 6 7 8 9 10 11 12 13 14 15 16 17 18 19 20 21 22 23 24 25 26 27 28 29 30]);
xticklabels({'DOW','S&P','NAS','Can','Mex','Bra','Chi','Col','Arg','Per','Eur','UK','Fra'...
    'Ger','Esp','Ita','Ned','Swe','Swi','Rus','Jpn','HK','Chn','Aus'...
    'Kor','Ind','Tai','Indo','Mal','Sin'});
% title('Largest Eigenvector');
title('Largest Eigenvector - Market Mode Removal');
legend('Before Crisis','During Crisis','After Crisis');
xlabel('Global Financial Indices');
ylabel('Eigenvector');
set(gcf,'color','w');
grid on;


figure(11);
plot(V_sortedBefore(:,2),'-o');
hold on; 
plot(V_sortedDuring(:,2),'-s');
hold on; 
plot(V_sortedAfter(:,2),'-d');
xticks([1 2 3 4 5 6 7 8 9 10 11 12 13 14 15 16 17 18 19 20 21 22 23 24 25 26 27 28 29 30]);
xticklabels({'DOW','S&P','NAS','Can','Mex','Bra','Chi','Col','Arg','Per','Eur','UK','Fra'...
    'Ger','Esp','Ita','Ned','Swe','Swi','Rus','Jpn','HK','Chn','Aus'...
    'Kor','Ind','Tai','Indo','Mal','Sin'});
% title('Second Largest Eigenvector');
title('Second Largest Eigenvector - Market Mode Removal');
legend('Before Crisis','During Crisis','After Crisis');
xlabel('Global Financial Indices');
ylabel('Eigenvector');
set(gcf,'color','w');
grid on;

% Used in presentation
% figure(1);
% plot(D_sortedBefore,'-o');
% hold on;
% plot(D_sortedDuring,'-s')
% hold on;
% plot(D_sortedAfter,'-d')
% title('Eigenvalues');
% xlabel('Component Number');
% ylabel('Eigenvalues');
% set(gcf,'color','w');
% legend('Before','During','After');
% grid on;

figure(2);
[~,hh1,xspan1] = histn(D_sortedBefore,0,0.1,20);
[~,hh2,xspan2] = histn(D_sortedDuring,0,0.1,20);
[~,hh3,xspan3] = histn(D_sortedAfter,0,0.1,20);

plot(xspan1,hh1)
hold on;
plot(xspan2,hh2)
hold on;
plot(xspan3,hh3)
% plot(d_Before,P_rcmBefore,'-r','LineWidth',2);
title('Empirical Eigenvalue Distribution');
xlabel('\lambda');
ylabel('\rho(\lambda)');
legend('Before Crisis','During Crisis','After Crisis');
set(gcf,'color','w');
grid on;

% figure(3);
% hold on;
% histn(D_sortedDuring,0,0.1,max(D_sortedDuring));
% hold on;
% plot(d_During,P_rcmDuring,'-r','LineWidth',2);
% title('Eigenvalues (During Crisis)');
% xlabel('Eigenvalue');
% ylabel('Probability Density');
% legend('Eigenvalues','P_{rcm}');
% set(gcf,'color','w');
% grid on;
% 
% figure(4);
% hold on;
% histn(D_sortedAfter,0,0.1,max(D_sortedAfter));
% hold on;
% plot(d_After,P_rcmAfter,'-r','LineWidth',2);
% title('Eigenvalues (After Crisis)');
% xlabel('Eigenvalue');
% ylabel('Probability Density');
% legend('Eigenvalues','P_{rcm}');
% set(gcf,'color','w');
% grid on;

v = -4:0.1:4;
p_v = (1/sqrt(2*pi)).*exp((-1.*(v.^2))./2);
k = 1;

figure(5);
v_k_Before = V_sortedBefore(:,k);
v_k_During = V_sortedDuring(:,k);
v_k_After = V_sortedAfter(:,k);

histn((-1)*sqrt(n_Before)*(v_k_Before),-4,0.1,4);
hold on; 
plot(v,p_v,'-r','LineWidth',2);
hold off;
title(['Largest Eigenvector u_{',num2str(k),'} Distribtuion - Market Mode Removal (Before Crisis)']);
% title(['Largest Eigenvector u_{',num2str(k),'} Distribtuion (Before Crisis)']);
xlabel('Eigenvector components');
ylabel('\rho(u)');
legend(['Eigenvector u_{',num2str(k),'} Distribution'],'\rho_{rm}(u)');
set(gcf,'color','w');
grid on;

figure(6);
histn(sqrt(n_During)*(v_k_During),-4,0.1,4);
hold on; 
plot(v,p_v,'-r','LineWidth',2);
hold off;
title(['Largest Eigenvector u_{',num2str(k),'} Distribtuion - Market Mode Removal (During Crisis)']);
% title(['Largest Eigenvector u_{',num2str(k),'} Distribtuion (During Crisis)']);
xlabel('Eigenvector components');
ylabel('\rho(u)');
legend(['Eigenvector u_{',num2str(k),'} Distribution'],'\rho_{rm}(u)');
set(gcf,'color','w');
grid on;


figure(7);
histn(sqrt(n_After)*(v_k_After),-4,0.1,4);
hold on; 
plot(v,p_v,'-r','LineWidth',2);
hold off;
title(['Largest Eigenvector u_{',num2str(k),'} Distribtuion - Market Mode Removal (After Crisis)']);
% title(['Largest Eigenvector u_{',num2str(k),'} Distribtuion (After Crisis)']);
xlabel('Eigenvector components');
ylabel('\rho(u)');
legend(['Eigenvector u_{',num2str(k),'} Distribution'],'\rho_{rm}(u)');
set(gcf,'color','w');
grid on;


IPR_Before = sum(V_sortedBefore.^4);
IPR_During = sum(V_sortedDuring.^4);
IPR_After = sum(V_sortedAfter.^4);
IPR_W = sum(W_eigenVector_Sorted.^4);

figure(8);
% plot(W_eigenValue_Sorted,IPR_W,'-o')
% hold on;
plot(D_sortedBefore,IPR_Before,'-o');
hold on;
plot(D_sortedDuring,IPR_During,'-s');
hold on;
plot(D_sortedAfter,IPR_After,'-d');
hold off;
title('IPR - Market Mode Removal');
% title('IPR');
xlabel('Eigenvalue \lambda');
ylabel('Inverse Participation Ratio');
legend('Before Crisis','During Crisis','After Crisis');
% xlim([10^-2 10^2]);
% ylim([10^-3 10^0]);
set(gcf,'color','w');
grid on;

figure(9);
%
[~,hh1,xspan1] = histn(Corr_Before(:),-0.5,0.1,1.5);
[~,hh2,xspan2] = histn(Corr_During(:),-0.5,0.1,1.5);
[~,hh3,xspan3] = histn(Corr_After(:),-0.5,0.1,1.5);
plot(xspan1,hh1,'-o')
hold on;
plot(xspan2,hh2,'-o')
hold on;
plot(xspan3,hh3,'-o')
xlabel('C_{ij}');
ylabel('P(C_{ij})');
title('Probability Density of Cross Correlation Matrix - Market Mode Removed');
% title('Probability Density of Cross Correlation Matrix');
legend('Before Crisis','During Crisis','After Crisis');
set(gcf,'color','w');
grid on;


% figure(10)
% imagesc(Corr_After);
% colorbar;
% title('After Crisis');
% set(gcf,'color','w');









