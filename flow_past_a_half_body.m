clear;
clc;
y = linspace(-1, 1, 100);
x = linspace(-1, 1, 100);

[X, Y] = meshgrid(x, y);
U = 1;
m = 5;

R = sqrt(X.^2 + Y.^2) ;
Theta = atan2(Y, X) ;
psi = U*R.*sin(Theta) + (m/(2*pi))*Theta ;
phi = U*R.*cos(Theta) + (m/(2*pi))*log(R) ;



% figure1 = figure; 

hold all;
contour(X, Y, psi, 100, '-b', linewidth=1);
plot(-2.5/pi, 0, '-ro')
% contour(X, Y, phi, 20, '--r', linewidth=2);
pbaspect([1 1 1]);
% set(h,'Visible','off')
% axis off
% axis image
% saveas(figure1,'finename.png')

