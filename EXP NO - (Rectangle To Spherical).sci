clc; 
clear;

// Input from user
x = input("Enter the value of x: ");
y = input("Enter the value of y: ");
z = input("Enter the value of z: ");

// Conversion to spherical coordinates
r = sqrt(x^2 + y^2 + z^2);
theta = acos(z / sqrt(x^2 + y^2 + z^2)); // polar angle
phi = atan(y, x);    // azimuthal angle


theta_deg = theta * 180 / %pi;
phi_deg = phi * 180 / %pi;

// Display results
disp("The Spherical Coordinates are:");
disp("r = " + string(r));
disp("theta = " + string(theta_deg) + " degrees");
disp("phi = " + string(phi_deg) + " degrees");
