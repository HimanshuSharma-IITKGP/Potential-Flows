clear ;
clc ;
y = linspace(0, 0.1, 20);
x = linspace(0, 0.1, 20);

[X, Y] = meshgrid(x, y);
m = 1;
epsilon = 4;
mu = m*epsilon/pi ;
phi =  X/(X.^2 + Y.^2) ;
psi =  Y/(X.^2 + Y.^2) ;


% figure1 = figure; 

hold all;
contour(X, Y, psi, 20, '-b', linewidth=2);
contour(X, Y, phi, 20, '--r', linewidth=2);
pbaspect([1 1 1]);
% set(h,'Visible','off')
% axis off
% axis image
% saveas(figure1,'finename.png')

