clear all; clc; close all;

choice = input("Input shape (square, triangle, circle): ")

if (strcmp(choice, "square"))
	side_length = input("Enter square side length: ");
	area = side_length*side_length
	perimeter = 4*side_length
elseif (strcmp(choice, "t"))
	base = input("Enter triangle base: ");
	height = input("Enter triangle height: ");
	area = 0.5*base*height;
elseif (strcmp(choice, "c"))
	radius = input("Enter circle radius: ");
	area = pi*radius*radius
	circumference = 2*pi*radius
else
	error("Invalid shape you goon!");
end

