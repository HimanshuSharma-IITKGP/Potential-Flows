clear;
clc;
y = linspace(-3, 3, 100);
x = linspace(-3, 3, 100);

[X, Y] = meshgrid(x, y);
U = 1;
a = 1;
gamma = 4*pi*a*U - 1 ;

R = sqrt(X.^2 + Y.^2) ;
Theta = atan2(Y, X) ;

psi = U*(R-(a^2)./R).*sin(Theta) + gamma*log(R/a)/(2*pi);
phi = U*(R + (a^2)./R).*cos(Theta) - gamma*Theta/(2*pi);



figure1 = figure; 

hold all;
contour(X, Y, psi, 99, '-b', linewidth=1);
hold on; hold all; 
contour(X,Y, psi, [0 0 ], '-r')
% contour(X, Y, phi, 100, '--g', linewidth=2);
pbaspect([1 1 1]);
axis image
saveas(figure1,'flow_past_a_cylinder_with_circulation.png')

