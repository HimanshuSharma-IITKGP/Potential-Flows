clear;
clc;
y = linspace(-3, 3, 100);
x = linspace(-3, 3, 100);

[X, Y] = meshgrid(x, y);
U = 1;
a = 1;
gamma = 4*pi*a*U  ;

R = sqrt(X.^2 + Y.^2) ;
Theta = atan(Y./X) ;

psi = U*(R-(a^2)./R).*sin(Theta) + gamma*log(R/a)/(2*pi);
phi = U*(R + (a^2)./R).*cos(Theta) - gamma*Theta/(2*pi);



figure1 = figure; 

hold all;
contour(X, Y, psi, 100, '-b', linewidth=1);
% contour(X, Y, phi, 100, '--r', linewidth=2);
pbaspect([1 1 1]);
axis image
saveas(figure1,'flow_past_a_cylinder_with_circulation.png')

