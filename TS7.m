
clear;
clc;
syms sigma_rr(r, theta, z) sigma_zz(r, theta, z) sigma_thetaTheta(r, theta, z) tau_zTheta(r, theta,z) tau_rTheta(r, theta, z) tau_rz(r, theta, z)

Q = [cos(theta) sin(theta) 0; -sin(theta) cos(theta) 0; 0 0 1];

sigma_cyl = [sigma_rr, tau_rTheta, tau_rz; tau_rTheta, sigma_thetaTheta, tau_zTheta; tau_rz, tau_zTheta, sigma_zz];


x = r*cos(theta);
y = r*sin(theta);

sigma_cart = simplify(transpose(Q)*sigma_cyl*Q) ;
sigma_cart = sigma_cart(r, theta, z );

sigma_xx = sigma_cart(1, 1);
sigma_yy = sigma_cart(2, 2);
sigma_zz = sigma_cart(3, 3);
tau_xy   = sigma_cart(1, 2);
tau_xz   = sigma_cart(1, 3);
tau_yz   = sigma_cart(2, 3);

nabla_sigma_cart = [diff(sigma_xx, r); diff(y, theta)];


display(nabla_sigma_cart);

