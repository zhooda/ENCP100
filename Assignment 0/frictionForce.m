clear all;
clc;

coeff = input('Please enter the coefficient of Friction : ');
normal = input('Please enter the Normal Force            : ');

fric = normal * coeff;

fprintf('\nThe friction force is: \n');
disp(num2str(fric));