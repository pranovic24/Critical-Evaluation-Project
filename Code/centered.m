function [currentData,m,n] = centered(a)

[row, col] = size(a);

currentData = zeros(row-1,col);

for i = 1:row-1
    currentData(i,:) = log(a(i+1,:)./a(i,:));
end

[m,n] = size(currentData);


for j = 1:n
    avg = mean(currentData(:,j));
    currentData(:,j) = currentData(:,j) - avg;
%   variance = sum(currentData(:,j).^2)/m;
%   currentData(:,j) = currentData(:,j)/sqrt(variance);
end

% sigma = (1/m)*(currentData')*(currentData);
% D = diag(diag(sigma));
% Corr = (D^(-1/2))*(sigma)*(D^(-1/2));
end