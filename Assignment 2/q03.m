clear all; clc; close all;

table = [ 5, 10, 15; 15, 15, 25; 5, 15, 10; 5, 10, 15 ; 5, 15, 15; 10, 10, 20; 10, 5, 10; 15, 2, 10]
table = table'
m1 = input('Input m1: ');
L1 = input('Input L1: ');
H1 = input('Input H1: ');
dx = input('Input dx: ');
dy = input('Input dy: ');
m2 = input('Input m2: ');
L2 = input('Input L2: ');
H2 = input('Input H2: ');

m1 = table(:, 1)
L1 = table(:, 2)
H1 = table(:, 3)
dy = table(:, 4)
dx = table(:, 5)
m2 = table(:, 6)
L2 = table(:, 7)
H2 = table(:, 8)


x1 = L1./2;
y1 = H1./2;

x2 = dx + L2./2;
y2 = dy + H2./2;


Cx = (x1.*m1 + x2.*m2)./(m1+m2)
Cy = (y1.*m1 + y2.*m2)./(m1+m2)


% Input m1: [ 5 10 15 ]
% Input L1: [ 15 15 25 ]
% Input H1: [ 5 15 10 ]
% Input dx: [ 5 10 15 ]
% Input dy: [ 5 15 15 ]
% Input m2: [ 10 10 20 ]
% Input L2: [ 10 5 10 ]
% Input H1: [ 15 2 10 ]