% x = input('X: ');
% 
% if x < 10
%     y = 0;
% elseif x >= 10
%     y = x^2;
% end
% 
% disp(y);

% F = ma
% F = (Gm1mE)/r^2
% a = GmE/(rE + h)^2

G = 6.67384E-11; %m3 kg-1 s-2
mE = 5.972E24;
rE = 6371E3;

h = input('Height: ');

a = (G*mE)/(rE + h)^2;
disp(a);
