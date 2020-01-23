clear all;
clc;

resStr = [ num2str(countsToMetres(2500)) 'm' ];
disp(resStr);

function metres = countsToMetres(counts)
    metres = counts * 0.0034;
end