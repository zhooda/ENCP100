clear all;
clc;

base  = input('Please enter the base: ');
length = input('Please enter the length: ');

p = (2 * base) + (2 * length);
resStr = sprintf('\nThe perimeter of the rectangle is:\n%s', num2str(p));
disp(resStr)