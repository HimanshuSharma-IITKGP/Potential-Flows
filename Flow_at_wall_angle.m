clear ;
clc ;
theta = linspace(-pi, pi, 20);
rho = linspace(0.001, 3, 20);

[THETA, RHO] = meshgrid(theta, rho);
A = 1;
n = 0.5;
psi = A*(RHO.*n).*sin(n.*THETA);
phi = A*(RHO.*n).*cos(n.*THETA);

X = RHO.*cos(THETA);
Y = RHO.*sin(THETA);

% figure1 = figure; 
h = polar(X, Y);
hold all;
contour(X, Y, psi, 20, '-b', linewidth=2);
% contour(X, Y, phi, 20, '--r', linewidth=2);
set(h,'Visible','off')
axis off
axis image
% saveas(figure1,'finename.png')

