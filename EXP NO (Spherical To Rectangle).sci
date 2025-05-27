clc;
clear;

// Input from user
r     = input("Enter the value of r (radius): ");
theta = input("Enter the value of theta (in degrees, inclination from +z): ");
phi   = input("Enter the value of phi (in degrees, azimuth from +x): ");

// Convert degrees to radians
theta_rad = %pi * theta / 180;
phi_rad   = %pi * phi / 180;

// Transformation equations
x = r * sin(theta_rad) * cos(phi_rad);
y = r * sin(theta_rad) * sin(phi_rad);
z = r * cos(theta_rad);

// Display computed values
disp("Computed Cartesian Coordinates:");
disp("x = " + string(x));
disp("y = " + string(y));
disp("z = " + string(z));
