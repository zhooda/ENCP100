x = 0:0.001:100;

y1 = 10.^(0.011.*x - 0.0177);
y2 = (0.6.*(x - 30) + 2.6)./10;
y3 = (0.0062*x + 0.0024*x.^2)./10;
y4 = (1 + 0.0066*x + 0.0084*x.^2)./10;

figure;
plot(x, y1);
hold on
plot(x, y2);
hold on
plot(x, y3);
hold on
plot(x, y4);