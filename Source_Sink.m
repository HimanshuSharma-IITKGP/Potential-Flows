clear; clc;
theta = linspace(-pi, pi, 20);
rho = linspace(-1, 1, 20);

[THETA, RHO] = meshgrid(theta, rho);

X = RHO.*cos(THETA);
Y = RHO.*sin(THETA);
m = 1;
psi = m*atan(Y./X)/(2*pi) ;
phi = -m*log(sqrt(X.^2 + Y.^2))/(2*pi) ;


% figure1 = figure; 
h = polar(X, Y);
hold all;
contour(X, Y, psi, 20, '-b', linewidth=2);
contour(X, Y, phi, 20, '--r', linewidth=2);
set(h,'Visible','off')
axis off
axis image
% saveas(figure1,'finename.png')

