clear all; clc; close all;

% i = [1; 2; 3; 4];
% A = [5 9 6 1.3; 1 2 3 4.2; 0 6 2 -3; 1 3 1 6]
% r = A(: 1).*cos(A(:2)./A(:3)) + A(:4) % all rows first column
% sum(r)

% r = [1 3 -1;...
%      4 5 8;...
%       2 2 3]
% F = [100 5 10;...
%      50 50 20;...
%       300 8 -5]
% M = cross(r, F, 2)
% Mr = sum(M, 1)

list = [5.23 5.0; 4.99 6.3; 3.12 7.2; 7.67 3.1; 9.58 1.6]
costOfJB = list(:, 1)
massBought = list(:, 2)
cost = costOfJB.*massBought
totalCost = sum(cost)
[maxC, ic] = max(cost)
massBought(ic)