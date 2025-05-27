clc;
clear;

// Inputs
theta_1 = input("Enter the value of theta1 (in degrees): ");
theta_2 = input("Enter the value of theta2 (in degrees): ");
er1 = input("Enter the value of relative permittivity er1: ");

// Using the formula: tan(θ1)/tan(θ2) = sqrt(er2/er1)
tan_theta_ratio = tand(theta_1) / tand(theta_2);
er2 = er1 * (tan_theta_ratio)^2;

disp("The value of relative permittivity er2 is: " + string(er2));
