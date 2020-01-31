clear all; clc; close all;

x = 0:0.1:2*pi;
y = cos(x);
y1 = sin(x);
y2 = sec(x);
y3 = csc(x);

figure;
subplot(2, 2, 1)
plot(x,y,'-or');
title('A plot of y=cos(x)');
xlabel('X data');
ylabel('Y data');

subplot(2, 2, 2)
plot(x, y1, ':xb');
title('A plot of y=sin(x)');
xlabel('X data');
ylabel('Y data');

subplot(2, 2, 3)
plot(x, y2, '--xg');
title('A plot of y=sec(x)');
xlabel('X data');
ylabel('Y data');

subplot(2, 2, 4)
plot(x, y3, '-g');
title('A plot of y=csc(x)');
xlabel('X data');
ylabel('Y data');

print -dpng example.png

figure;
x1 = 0:0.1:4*pi; 
y4=cos(x1); 
y5=x1.^2;
plotyy(x1,y4,x1,y5)
