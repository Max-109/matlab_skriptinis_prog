x = -2:0.1:2;
y = -2:0.1:2;
[X, Y] = meshgrid(x, y);
Z = sin(abs(X+Y)/20).*exp(-abs(X+Y));

figure
surf(X, Y, Z)
shading interp
colormap winter
view(30, 30)
title('f(x,y) = sin(|x+y|/20)e^{-|x+y|}')
xlabel('x')
ylabel('y')
zlabel('f(x,y)')

r = 0:0.05:1;
theta = linspace(0, 2*pi, 100);
[R, Theta] = meshgrid(r, theta);
X = R.*cos(Theta);
Y = R.*sin(Theta);
Z = 1 - 2*X.^2 - 3*Y.^2;

figure
surf(X, Y, Z)
shading interp
colormap jet
view(78, 30)
title('f(x,y) = 1 - 2x^2 - 3y^2')
xlabel('x')
ylabel('y')
zlabel('f(x,y)')

[X, Y] = meshgrid(x, y);
Z = 1 - (X.^2 + Y.^2);

figure
surf(X, Y, Z, 'FaceColor', 'r')
camlight left
