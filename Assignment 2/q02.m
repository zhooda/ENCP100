clear all; clc; close all;

m = input('Input bot mass or mass matrix [kg]: ');
theta = input('Input angle of incline or angle matrix [deg]: ');
g = input('Input gravitational acceleration [ms^-2]: ');


F = m*g.*sind(theta);
N = m*g.*cosd(theta);

coeff = F./N;

disp(coeff);