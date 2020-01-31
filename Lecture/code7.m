clear all; close all; clc;

x1 = 0:0.01:4*pi;
y1 = cos(x1);

x2 = 5:0.01:5;
y2 = x2/(x2+1);

x3 = 0:0.001:10;
y3 = 0.5*x3.*x3;

figure
subplot(2, 2, 1);
plot(x1,y1);

subplot(2, 2, 2);
plot(x2,y2);

subplot(2, 2, 3);
plot(x3,y3);