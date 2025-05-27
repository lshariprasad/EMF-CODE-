clc;
clear;

// Magnetic Field Calculation
i = input("Enter current (i) in Amperes: ");
r1 = input("Enter radius (r) in meters for Magnetic Field: ");
mu0 = 4 * %pi * 1e-7;
H = i / (2 * %pi * r1);  // Magnetic field intensity (A/m)

disp("Magnetic field intensity H = " + string(H) + " A/m");

// Electric Field Calculation
lambda = input("Enter linear charge density (lambda) in C/m: ");
r2 = input("Enter radius (r) in meters for Electric Field: ");
Eo = 8.854 * 10^-12;
E = lambda / (2 * %pi * Eo * r2);  // Electric field intensity (V/m)

disp("Electric field intensity E = " + string(E) + " V/m");

// Plotting
x = linspace(0.1, 10, 50);  // avoid zero to prevent division error
y = H * exp(-0.1 * x);      // Decaying magnetic field
z = E * exp(-0.1 * x);      // Decaying electric field

figure();
subplot(1,2,1);
plot(x, y);
title("Magnetic Field Intensity");
xlabel("Distance (m)");
ylabel("H (A/m)");

subplot(1,2,2);
plot(x, z);
title("Electric Field Intensity");
xlabel("Distance (m)");
ylabel("E (V/m)");
