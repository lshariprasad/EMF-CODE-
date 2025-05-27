clc;
clear;

pi = %pi; // Use SCILAB’s built-in value for higher precision
e = 8.854e-12; // Permittivity of free space (F/m)

// User input
r1 = input("Enter the inner radius r1 (in meters): ");
r2 = input("Enter the outer radius r2 (in meters): ");

// Capacitance of an isolated sphere
ci = 4 * pi * e * r2;
disp("Capacitance of isolated sphere: " + string(ci) + " F");

// Plotting capacitance vs r2
r2_vals = linspace(0.1, 10, 50); // Avoid 0 to prevent ci=0
ci_vals = 4 * pi * e * r2_vals;

figure();
plot(r2_vals, ci_vals);
xlabel("Radius r2 (m)");
ylabel("Capacitance (F)");
title("Capacitance of Isolated Sphere");

// Capacitance of concentric spherical capacitor
// Formula: C = 4πε₀ * (r1 * r2) / (r2 - r1)
if r2 > r1 then
    co = 4 * pi * e * (r1 * r2) / (r2 - r1);
    disp("Capacitance of concentric spherical capacitor: " + string(co) + " F");
else
    disp("Error: r2 must be greater than r1 for concentric spheres.");
end
