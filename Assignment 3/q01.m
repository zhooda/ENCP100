clear all; clc; close all;

A = [5; 7; 1]

B = [-1, 3, pi]

C = [ -1, 3, 9; 6, -4, 2]

D = [ 2, 10, 4; 3, 9, -2]

E = [5, 3, 2; -2, 0.5, 1; 6, 7, 3]

a = C - D
b = 2*B' + A
c = B*E
d = B*A
e = trace(E)
f = norm(A)
g = cross(A', B)
h = dot(A', B)
i = E^-1
j = det(E)
k = E*E^-1
l = size(D)
