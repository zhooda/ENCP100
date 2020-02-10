clear all; clc; close all;

choice = input("Does the shape have right angles? (1: yes, 2: no): ");

if (choice == 1)
	choice = input("Are all the sides the same length? (1: yes, 2: no): ");
	if (choice == 1)
		disp("Shape is a square.");
	elseif (choice == 2)
		disp("Shape is a rectangle.");
	end
elseif (choice == 2)
	choice == input("Is there a pair of parallel sides (1: yes, 2: no): ");
	if (choice == 1)
		choice == input("Is there two pairs of parallel sides? (1: yes, 2: no): ");
		if (choice == 1)
			choice == input("All sides same length (1: yes, 2: no): ");
			if (choice == 1)
				disp("Shape is rhombus.");
			elseif (choice == 2)
				disp("Shape is a parallelogram");
			end
		elseif (choice == 2)
			disp("Shape is a trapezoid.");
		end
	elseif (choice == 2)
		disp("Shape is a quadrilateral");
	end
end
