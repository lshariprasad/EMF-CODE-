clc;
clear;
close();

// Parameters
frequency = 2.4e9; // Frequency in Hz (2.4 GHz)
c = 3e8;           // Speed of light in m/s
lambda = c / frequency; // Wavelength in meters

// Antenna Parameters
d = lambda / 2;    // Element spacing (half-wavelength)
theta = linspace(0, %pi, 180); // Angular range (0 to π radians)
theta_deg = theta * (180 / %pi); // Convert to degrees for plotting

// Number of elements in the array
N = 8;
k = 2 * %pi / lambda; // Wavenumber
beta = 0; // Phase shift

// Compute Array Factor (AF)
kd_cos_theta = k * d * cos(theta);
AF = abs(sin(N * kd_cos_theta / 2) ./ (N * sin(kd_cos_theta / 2))); 

// Handle division by zero
AF(find(isnan(AF))) = 1; 

// Normalize Array Factor
AF = AF / max(AF);

// Plot Array Factor vs Theta
clf();
plot2d(theta_deg, AF, style=5, rect=[0,0,180,1]); // Cartesian plot
xlabel("Theta (degrees)");
ylabel("Normalized Array Factor");
title("Array Factor vs Theta");
xgrid();
