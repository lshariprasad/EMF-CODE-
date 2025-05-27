clc;
clear;

// Constants
frequency = 2.4e9;          // Frequency (2.4 GHz)
c = 3e8;                    // Speed of light (m/s)
lambda = c / frequency;     // Wavelength

// Antenna Parameters
d = lambda / 2;             // Element spacing (λ/2)
theta = linspace(0, 2 * %pi, 360); // Angle from 0 to 2π radians
N = 8;                      // Number of elements
beta = 0;                   // Phase shift between elements

// Array Factor Calculation
psi = (2 * %pi * d / lambda) * cos(theta) + beta;
AF = abs(sin(N * psi / 2) ./ (N * sin(psi / 2)));
AF = AF / max(AF); // Normalize

// Plot Radiation Pattern (using polarplot)
clf();
polarplot(theta, AF);
xtitle("Radiation Pattern of Uniform Linear Antenna Array");
