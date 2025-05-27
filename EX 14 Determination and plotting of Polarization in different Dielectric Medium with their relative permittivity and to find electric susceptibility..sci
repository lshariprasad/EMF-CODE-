clc;
clear;

// Constants
epsilon = 8.854 * 10^-12;

// Input values
er = input("Enter the relative permittivity (εr): ");
E = input("Enter the Electric Field (V/m): ");

// Calculations
chi = er - 1;                      // Electric Susceptibility
P = chi * epsilon * E;            // Polarization

// Display Results
disp("Electric Susceptibility (χe) = " + string(chi));
disp("Polarization (P) = " + string(P) + " C/m^2");

// Data for plot
x = linspace(0,10,50);
y = chi * (0.1 * x);              // scaled χe for visualization
z = P * (0.1 * x);                // scaled Polarization for visualization

// Plotting
figure();

subplot(2,2,1);
plot2d3(x, y);
title("Electric Susceptibility");
xlabel("Permittivity Variation");
ylabel("χe");

subplot(2,2,2);
plot2d3(x, z);
title("Polarization");
xlabel("Electric Field Variation");
ylabel("Polarization (C/m^2)");
