clc;
clear;

// Define example variables
rho = input("Enter the value of rho: ");
phi = input("Enter the value of phi (in degrees): ");
z   = input("Enter the value of z: ");

// Convert degrees to radians
phi_rad = %pi * phi / 180;

// Transformation equations
x = rho * cos(phi_rad);
y = rho * sin(phi_rad);

disp("Computed Cartesian Coordinates:");
disp("x = " + string(x));
disp("y = " + string(y));
disp("z = " + string(z));
