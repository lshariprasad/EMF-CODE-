clc;
clear;

// Inputs
charge_1 = input("Enter the charge_1 value (in C) = ");
charge_2 = input("Enter the charge_2 value (in C) = ");
radius = input("Enter the radius value (in m) = ");
current_1 = input("Enter the current_1 value (in A) = ");
current_2 = input("Enter the current_2 value (in A) = ");
l = input("Enter the length value (in m) = ");
d = input("Enter the distance between conductors d (in m) = ");

// Constants
mu = 4 * 3.14 * 1e-7;           // Permeability of free space (H/m)
epsilon = 8.854e-12;           // Permittivity of free space (F/m)
pi = 3.14;

// Electric force using Coulomb's Law
F = (charge_1 * charge_2) / (4 * pi * epsilon * radius^2);

// Magnetic force between two parallel conductors
f = (mu * current_1 * current_2 * l) / (2 * pi * d);

// Display results
disp("THE FORCE BETWEEN TWO ELECTRIC CHARGES (N):");
disp(F);

disp("THE FORCE BETWEEN TWO PARALLEL CONDUCTORS (N):");
disp(f);

// Exponential decay (visualization)
x = linspace(0, 10, 50); 
y = F * exp(-0.1 * x); 
z = f * exp(-0.1 * x);

// Plotting
figure();
subplot(2, 2, 1); 
plot2d3(x, y); 
xlabel("Distance (m)");
ylabel("Electric Force (N)");
title("Force Between Two Electric Charges");

subplot(2, 2, 2); 
plot2d3(x, z); 
xlabel("Distance (m)");
ylabel("Magnetic Force (N)");
title("Force Between Two Parallel Conductors");
