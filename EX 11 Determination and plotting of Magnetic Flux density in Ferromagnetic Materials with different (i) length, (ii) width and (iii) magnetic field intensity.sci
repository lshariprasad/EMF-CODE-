clc;
clear;

mr = input("Enter the value of mr = ");
H = input("Enter the value of H = ");
L = input("Enter the value of Length = ");
W = input("Enter the value of Width = ");

pi = 3.14;
mu0 = 4 * pi * 1e-7; // Magnetic constant
B = mu0 * mr * H;     // Magnetic flux density
A = L * W;            // Area
Flux = B * A;         // Total magnetic flux

disp("Magnetic Flux Density (B) = " + string(B) + " T");
disp("Total Magnetic Flux = " + string(Flux) + " Wb");

x = linspace(0, 10, 50);
y = B * exp(-0.1 * x);  // Assuming decaying magnetic field with distance

figure();
plot(x, y);
xlabel("Distance (m)");
ylabel("Magnetic Flux Density (T)");
title("Variation of Magnetic Flux Density");
