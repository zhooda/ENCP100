clear all; clc; close all;

x = -4:0.001:4;

k = [ 1, 2, 3 ];
a = [ 0.25, 0.5, 1 ];

Hx = 1./(1 + exp(-2*k(1)*x));
Hx1 = 1./(1 + exp(-2*k(2)*x));
Hx2 = 1./(1 + exp(-2*k(3)*x));
deltax = (1./(abs(a(1))*sqrt(pi))) * exp(-(x/a(1)).^2);
deltax1 = (1./(abs(a(2))*sqrt(pi))) * exp(-(x/a(2)).^2);
deltax2 = (1./(abs(a(3))*sqrt(pi))) * exp(-(x/a(3)).^2);

figure;

plotyy(x, [Hx; Hx1; Hx2], x, [deltax; deltax1; deltax2]);
% plot(x, [Hx; Hx1; Hx2; deltax; deltax1; deltax2]);
grid;
legend("H(x), k=1", "H(x), k=2", "H(x), k=3", "d(x), a=0.25", "d(x), a=0.5", "d(x), a=1");
xlabel("x");

yyaxis left
ylabel("H(x)");

yyaxis right
ylabel("d(x)");
set(gca, 'YTick', []);

title("Functions to describe discontinuities");