clear all;
clc;
format short;

r = 0.5;
theta = 1.0472;
s = (r * theta);
rStr = num2str(round(r, 2));
thetaStr = num2str(round(theta, 5));

resStr = sprintf('Using:\n1) A wheel of radius: r = %s [m]\n2) The angular displacement: theta = %s [radians]\n\nThe distance travelled is: %s', rStr, thetaStr, num2str(s));

disp(resStr);