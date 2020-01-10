clear all;
clc;

% STRING VARS
welcome = 'Welcome to this calculator!';
disp(welcome);

% running calculator function
calculator(input('First Number: '), input('Second Number: '), input('Operation: ', 's'))

function r = calculator(a, b, op)
    % decide op
    if op == '+'
        r = a + b;
    elseif op == '-'
        r = a - b;
    elseif op == '*'
        r = a * b;
    elseif op == '/'
        r = a / b;
    elseif op == '%'
        r = mod(a, b);
    end

    % output statement
    fprintf('%s %s %s = %s', num2str(a), op, num2str(b), num2str(r));

end