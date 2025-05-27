clc;
clear;

// First part: Capacitance of a parallel plate capacitor
a1 = input("Enter the a1 value (area in m^2): ");
d = input("Enter the d value (distance in m): ");

e = 8.854e-12; // Permittivity of free space (ε₀)
c = e * a1 / d;
disp("Capacitance of the parallel plate is: " + string(c) + " F");

// Plotting capacitance decay with distance
d_vals = linspace(0.1, 10, 50); // Avoid zero to prevent division by zero
y = e * a1 ./ d_vals;

figure();
plot(d_vals, y);
xlabel("Distance (d) in meters");
ylabel("Capacitance (F)");
title("Capacitance vs. Distance");

// Second part: Capacitance with multiple dielectric layers
a2 = input("Enter the a2 value (area in m^2): ");
d1 = input("Enter the d1 value (m): ");
d2 = input("Enter the d2 value (m): ");
d3 = input("Enter the d3 value (m): ");
er1 = input("Enter the relative permittivity er1: ");
er2 = input("Enter the relative permittivity er2: ");
er3 = input("Enter the relative permittivity er3: "); // fixed variable name

// Formula: C = ε₀*A / (d1/εr1 + d2/εr2 + d3/εr3)
c1 = e * a2 / ((d1/er1) + (d2/er2) + (d3/er3));
disp("Capacitance with multiple dielectrics is: " + string(c1) + " F");
