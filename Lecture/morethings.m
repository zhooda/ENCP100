% 
% get input r, theta from user
% convert theta to radians
% set Ix = equation
% set Iy = equation
% output Ix and Iy
% 

clear all; clc; close all;



% function inertia()

%     r = input('Input r: ');
%     theta = input('Inpu theta [rads]: ');

%     Ix = ((r^4)/4)*(theta - 0.5*sin(2*theta));
%     Iy = ((r^4)/4)*(theta + 0.5*sin(2*theta));

%     fprintf('Ix = %f\nIy = %f', Ix, Iy)
% end

% budget = input('Please enter budget [$]: ');
% sprocketCost = 12.30;

% n = floor(budget / sprocketCost)

% A = input('Input A: ');
% alpha = input('Input alpha [deg]: ');
% gamma = input('Input gamma [deg]: ');

% C = A / sind(alpha) * sind(gamma);
% disp(C);

temp_c = input('Input temp [ºC]: ');

choice = input('Which temp would you like (f, k, r)')
temp_f = temp_c * (9/5) + 32;
temp_k = temp_c + 273.15;
temp_r = temp_f + 459.67
if choice == 'f'
    disp(temp_f)
elseif choice == 'k'
    disp(temp_k)
else
    disp(temp_r)
end



fprintf('[F]: %s\n[K]: %s\n[R]: %s\n', num2str(temp_f), num2str(temp_k), num2str(temp_r))