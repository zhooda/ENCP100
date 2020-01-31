clear all; clc; close all;

format shortg

c = clock;

current_year = c(1);

birth_year = input("What year were you born? ");

age = current_year - birth_year;

if (age < 18)
    disp("Nah b you get no alc");
end
