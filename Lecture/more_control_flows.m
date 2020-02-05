clear all; clc; close all;

% num = randi(10);
% guess = input("Guess a number form 1 to 10: ");

% while guess ~= num
%     guess = input("Nope, try again: ");
% end
% disp("That is correct")

% for index = 10:-1:1
%     fprintf("%d\n", index)
% end

% arr = input("Input crap: ")

% arr = [ 1 2 3 4 5 ];

% s = 0;
% for index = 1:length(arr)
%     s = s + arr(index);
% end
% x = (1/length(arr))*s;
% disp(x)
% disp(mean(arr))
% disp(sum(arr)/length(arr))

% x = -5:1:7;
% y = [];
% for index = 1:length(x)
% %     y = [ y (5*x(index)^2 - 2) ];
%       y(index) = (5*x(index)^2 - 2);
% 
% end
% 
% figure;
% plot(x, y); 

% s = 0
% for i = 1:10
%    
%     s = s + i
%     
% end

y = 1;

for k = 1:10
   
   y = y * (2*pi*k)
    
end