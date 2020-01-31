clear all; clc; close all;

x=0:0.1:2*pi;
y=cos(x);
y2=sin(x);

figure;
plot(x,y)
title('A plot of y=cos(x)');
grid on;
xlabel = 'X data [rads]';
ylabel = 'Y data []';

figure;
plot(x,y,'rx-',x,y2,'bo');
xlabel = 'X data [rad]';
ylabel = 'Y data []';
legend('cos(x)', 'sin(x)');