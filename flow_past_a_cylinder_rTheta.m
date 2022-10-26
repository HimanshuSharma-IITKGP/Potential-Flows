clear;
clc;
theta = linspace(-pi, pi, 100);
rho = linspace(0.0001, 1, 100);

[Theta, R] = meshgrid(theta, rho);
a = 1;
U = 1;


psi = U*(R-(a^2)./R).*sin(Theta);
phi = U*(R + (a^2)./R).*cos(Theta);

X = R.*cos(Theta);
Y = R.*sin(Theta);

% figure1 = figure; 
h = polar(X, Y);
hold all;
contour(X, Y, psi, 100, '-b', linewidth=2);
contour(X, Y, phi, 100, '--r', linewidth=2);
set(h,'Visible','off')
axis off
axis image
% saveas(figure1,'finename.png')

