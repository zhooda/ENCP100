clear all; clc; close all;

table = [ 0.5, 0.5, 23, 30, 10, 30; 1, 2, 75, 25, 75, 100; 0.75, 1, 120, 76, 30, 50]

H = input("Input H [m]: ");
W = input("Input H [m]: ");
n1 = input("Input H [m]: ");
n2 = input("Input H [m]: ");
d1 = input("Input H [m]: ");
d2 = input("Input H [m]: ");

H = table(:, 1)
W = table(:, 2)
n1 = table(:, 3)
n2 = table(:, 4)
d1 = table(:, 5)./1000
d2 = table(:, 6)./1000
r1 = d1./2
r2 = d2./2

circleArea = (pi.*r1.^2).*n1 + (pi.*r2.^2).*n2;
totalArea = H.*W;
freeArea = totalArea - circleArea;

ratio = freeArea./totalArea;
disp("r = ");
disp(ratio);