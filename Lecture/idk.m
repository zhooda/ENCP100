clear all; clc; close all;

cm_in = input('Please input a variable [cm]: ');

cf1 = 1/2.54;
cf2 = 1/12;

ft_out = cf1 * cf2 * cm_in;

disp(ft_out)