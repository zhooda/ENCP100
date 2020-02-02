clear all; clc; close all;

data = csvread("data/oilSpillData.dat");

% Determine # of oil spills
num_of_spills = length(data(:,1));
fprintf("Total number of oil spills:               %d\n", num_of_spills);

% Determine average spill size
avg_spill_size = mean(data(:, 5));
fprintf("Average oil spill size [m^3]:             %.5f\n", avg_spill_size);

% Determine total volume of oil spilled
total_spill_vol = sum(data(:, 5));
fprintf("Total volume of oil spilled [m^3]:        %.2f\n", total_spill_vol);

% Determine range of spill sizes
spill_range = [min(data(:, 5)), max(data(:, 5))];
spill_range2 = range(data(:, 5));
fprintf("Range of spill sizes:                     %d - %d\n", spill_range(1), spill_range(2));

% Determine year of max oil spill
[m, i] = max(data(:, 5));
max_year = data(i, 1);
fprintf("Year with maximum oil spill:              %d\n", max_year);

% Determine number of oil spills larger than 1000m^3
large_spills = sum(data(:, 5) > 1000);
fprintf("Number of spills larger than 1000 m^3:    %d\n", large_spills);

% Create histogram of spills with pipe diameters less than 500mm
hist_data = [];
for i = 1:length(data(:, 4))
    
   if data(i, 4) < 500
       hist_data = [hist_data data(i, 4)];
   end
    
end
figure;
hist(hist_data);
title("Histogram of Oil Spills of Pipe Diameter < 500mm");
xlabel("bins");
ylabel("count");

print -djpeg img/hist.jpeg


% Create scatter plot of longitude vs lattitude
lon = data(:, 6);
lat = data(:, 7);

figure;
ab_map = imread("data/albertaMap.png");
imshow(ab_map);
title("Oil Spills in Alberta");
longNew = 75*(lon + 120);
latNew = (1406/11)*(60 - lat);
hold on
scatter(longNew, latNew, 'xk');

print -djpeg img/image02.jpeg





