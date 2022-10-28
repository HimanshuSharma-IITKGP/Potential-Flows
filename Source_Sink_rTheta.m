theta = linspace(-pi, pi, 20);
rho = linspace(0.001, 1, 20);

[THETA, RHO] = meshgrid(theta, rho);
m = 1;
psi = m*THETA/(2*pi) ;
phi = m*log(RHO)/(2*pi) ;

X = RHO.*cos(THETA);
Y = RHO.*sin(THETA);

% figure1 = figure; 
h = polar(X, Y);
hold all;
contour(X, Y, psi, 20, '-b', linewidth=2);
contour(X, Y, phi, 20, '--r', linewidth=2);
set(h,'Visible','off')
axis off
axis image
% saveas(figure1,'finename.png')

