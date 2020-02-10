clear all; clc; close all;

x = input("Input x: ")
xa = 1:0.1:10;
errmax = 1e-14;

notconverged = true;

k = 0;
yo = x^k/factorial(k);

for ii=1:length(xa)
        x = xa(ii);

        errmax = 1e-7;
        notconverged = true;
        k = 0;
        yo = x^k/factorial(k);

    while (notconverged)
        k = k + 1;
        yn = yo + (x^k/factorial(k));
        err = abs(yn - yo)
        if (err < errmax)
            notconverged = false;
        end
        yo = yn
    end

    ya(ii) = yn;
end

plot(xa, ya);