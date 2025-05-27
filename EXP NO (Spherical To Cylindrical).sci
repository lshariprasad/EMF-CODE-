clc;
clear;

// Input from user
r     = input("Enter the value of r (radius): ");
theta = input("Enter the value of theta (in degrees, angle from +z axis): ");
phi   = input("Enter the value of phi (in degrees, azimuth from +x axis): ");

// Convert degrees to radians
theta_rad = %pi * theta / 180;
phi_rad   = %pi * phi / 180;

// Transformation formulas
rho = r * sin(theta_rad);     // radial distance in xy-plane
z   = r * cos(theta_rad);     // height (same as in spherical)
phi_cyl = phi;                // same azimuth

// Display computed values
disp("Computed Cylindrical Coordinates:");
disp("rho = " + string(rho));
disp("phi = " + string(phi_cyl) + " degrees");
disp("z = " + string(z));
