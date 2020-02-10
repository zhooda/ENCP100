clear all; clc; close all;

num = randi([0, 10], 1)

guess = input("Guess: ")

while (true)
    if (guess == num)
        disp("correct");
        break;
    else
        guess = input("Guess: ")
        disp("stupid");
    end
end