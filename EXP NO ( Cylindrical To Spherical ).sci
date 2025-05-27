clc;
clear;

// Input from user
rho = input("Enter the value of rho (radial distance in xy-plane): ");
phi = input("Enter the value of phi (in degrees, azimuth): ");
z   = input("Enter the value of z (height): ");

// Convert degrees to radians for computation
phi_rad = %pi * phi / 180;

// Transformation formulas
r     = sqrt(rho^2 + z^2);
theta = atan(rho / z);             // inclination angle (in radians)
phi_sph = phi;                   // unchanged

// Convert theta to degrees
theta_deg = theta * 180 / %pi;

// Display computed values
disp("Computed Spherical Coordinates:");
disp("r = " + string(r));
disp("theta = " + string(theta_deg) + " degrees");
disp("phi = " + string(phi_sph) + " degrees");
