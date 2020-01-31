clear all; clc; close all;

table = [ 50.05, 2, 0, 0, 0, 0, 0;...
	0.10, 53, 12.50, 0, 0, 0, 0;...
	2.50, 5, 23.99, 0, 0, 0, 0;...
	0, 0, 0, 0.02, 5.43, 7.50, 3;...
	0, 0, 0, 0.23, 2.21, 7.50, 5;...
	0, 0, 0, 0.42, 0.33, 10.55, 9;...
	0, 0, 0, 0.11, 0.43, 5.00, 1; ]

material_cost = table(:, 5).*table(:, 4)
labour_cost = table(:, 6).*table(:, 7)
printed_cost = material_cost + labour_cost

purchased_cost = 1.07*table(:, 1).*table(:, 2) + table(:, 3)

total_cost = sum(printed_cost) + sum(purchased_cost)

avg_material_cost = mean(nonzeros(table(:, 5).*table(:, 4)))

[max_labour_cost , i] = max(labour_cost)

max_labour_material_cost = table(i, 6)*table(i, 7)

numParts = sum(table(:, 7)>=3)
