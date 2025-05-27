// Clear previous variables and command window
clc;
clear;

// Define parameters
N = 10; // Number of elements in ULA
d = 0.5; // Element spacing in wavelengths
theta = linspace(0, %pi, 180); // Angle in radians

// Compute Array Factor (AF)
AF = abs(sin(N * %pi * d * cos(theta)) ./ (N * sin(%pi * d * cos(theta))));
AF = AF / max(AF); // Normalize AF

// Compute Antenna Efficiency
radiated_power = sum(AF.^2 .* sin(theta)) * (theta(2) - theta(1));
input_power = 1; // Assume normalized input power
efficiency = (radiated_power / input_power) * 100;

// Plot Radiation Pattern
scf();
plot(theta * 180 / %pi, AF.^2, 'color', 'orange', 'linewidth', 2);
xlabel("Theta (degrees)");
ylabel("Normalized Power (AF^2)");
title("Antenna Radiation Power Pattern");
xgrid();
legend("Normalized Power Pattern");

// Display efficiency
disp("Antenna Efficiency (%): "), disp(efficiency);

// Save results to file
filename = "antenna_efficiency_results.txt";
fd = mopen(filename, "wt");
mfprintf(fd, "Antenna Efficiency (%%): %.2f\n", efficiency);
mclose(fd);

disp("Results saved to antenna_efficiency_results.txt");
