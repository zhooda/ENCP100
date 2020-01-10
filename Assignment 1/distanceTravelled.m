clear all;
clc;

v = input('Please enter the speed         : ');
a = input('Please enter the acceleration  : ');
t = input('Please enter the change in time: ');

s = (v * t) + (0.5 * a * (t^2));


fprintf('\nThe change in distance is:\n');
disp(s);