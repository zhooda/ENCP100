clear all; clc; close all;

a = input("A matrix please: ");
b = input("B matrix please: ");
% a = [1 2 3; 4 5 6; 7 8 9]

% [r, c] = size(a);

% s=0;

% if (nr == nc)


% for ii = 1:r
%     for jj = 1:c
%         if (ii == jj)
%             s = s + a(ii, jj)
%         end
%     end
% end

[m,p]=size(a);
[p,n]=size(b);

for i=1:m
    for j=1:n 
        s = 0
        for k=1:p
            s = s + a(i, k)*b(k, j);
        end
    C(i,j) = s;
    end
end