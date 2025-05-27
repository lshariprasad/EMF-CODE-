clc;
clear;
close();

N = 8;                      // Number of elements
lambda = 3e8 / 2.4e9;       // Wavelength (for 2.4 GHz)
d = lambda / 2;             // Element spacing
theta = linspace(0, %pi, 180);
theta_deg = theta * (180 / %pi);
k = 2 * %pi / lambda;
// Compute Array Factor (AF)
AF = abs(sin(N * k * d * cos(theta) / 2) ./ (N * sin(k * d * cos(theta) / 2))); 
AF(find(isnan(AF))) = 1;    // Handle division by zero
AF = AF / max(AF);          // Normalize

// Compute HPBW
threshold = 1 / sqrt(2);
indices = find(AF >= threshold);
HPBW = (theta_deg(indices($)) - theta_deg(indices(1)));
disp("HPBW: "), disp(HPBW);

clf();
plot2d(theta_deg, AF, style=5, leg="Array Factor");
xpoly([0, 180], [threshold, threshold], "lines", 2);  // -3 dB line
xpoly([theta_deg(indices(1)), theta_deg(indices($)), theta_deg(indices($)), theta_deg(indices(1))], [0, 0, threshold, threshold], "lines", 12);
xlabel("Theta (degrees)");
ylabel("Normalized Array Factor");
title("Antenna Radiation Pattern and HPBW");
xgrid();
