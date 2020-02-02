clear all; clc; close all;

% NOTE: .dat files were stored in a seperate directory
%       to keep my git repo organized.
data = csvread('data/botData.dat');
counts = data(:,1);
dist = data(:, 2);

figure;
scatter(counts, dist);
title("Bot Calibration Data Scatter");
xlabel("Counts");
ylabel("Distance [m]");

% NOTE: Images also stored in a seperate directory
%       because organization is key.
print -dpng img/scatter.png

figure;
scatter(counts, dist, '.b')

% Calculating and plotting the line of best fit
p = polyfit(counts, dist, 1);
f = polyval(p, counts);
hold on
plot(counts, f, '-r');

% Converting slope value to string and placing on plot
slope_text = sprintf("slope = %f", p(1));
text(1250, 1.3, slope_text);

title("Bot Calibration Data Best Fit");
xlabel("Counts");
ylabel("Distance [m]");

print -dpng img/bestFit.png