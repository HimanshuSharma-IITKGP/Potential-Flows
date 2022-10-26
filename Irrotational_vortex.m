y = linspace(-1, 1, 100);
x = linspace(-1, 1, 100);

[X, Y] = meshgrid(x, y);
gamma = 1;
phi = gamma*atan(Y./X)/(2*pi) ;
psi = -gamma*log(sqrt(X.^2 + Y.^2))/(2*pi) ;


% figure1 = figure; 

hold all;
contour(X, Y, psi, 20, '-b', linewidth=2);
contour(X, Y, phi, 20, '--r', linewidth=2);
pbaspect([1 1 1]);
% set(h,'Visible','off')
% axis off
% axis image
% saveas(figure1,'finename.png')

