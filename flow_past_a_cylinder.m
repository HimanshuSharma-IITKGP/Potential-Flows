clear;
clc;
y = linspace(-2, 2, 100);
x = linspace(-2, 2, 100);

[X, Y] = meshgrid(x, y);
U = 1;
a = 1;

R = sqrt(X.^2 + Y.^2) ;
Theta = atan(Y./X) ;
psi = U*(R-(a^2)./R).*sin(Theta);
phi = U*(R + (a^2)./R).*cos(Theta);



% figure1 = figure; 

hold all;
contour(X, Y, psi, 100, '-b', linewidth=1);
% plot(x, sqrt(a^2 - x.^2), '-k');
contour(X, Y, phi, 100, '--r', linewidth=2);
contour(X, Y, psi, [0 0]);
pbaspect([1 1 1]);
axis off
axis image
% saveas(figure1,'finename.png')

