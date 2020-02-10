clear all; clc; close all;

x = input("Input x: ");
y = input("Input y: ");
ans = 0;

if (x < 0 & y >= 0)
	ans = pi + atan(y/x)
elseif (x < 0 & y < 0)
	ans = -pi + atan(y/x)
elseif (x > 0)
	ans = atan(y/x)
elseif (x == 0 & y > 0)
	ans = pi/2
elseif (x == 0 & y < 0)
	ans = -pi/2
elseif (x == 0 & y == 0)
	ans = NaN
else
	disp("invalid input");
end
