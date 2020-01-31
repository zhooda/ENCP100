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

% figure 3
x2 = 0:0.01:4*pi;
y3 = cos(x2);
y4 = x2.^2;
figure;

plotyy(x2,y3,x2,y4);

