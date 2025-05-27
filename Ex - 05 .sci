clc;
clear;

// Constants
e = 8.854e-12;           // Permittivity of free space (F/m)
pi = 3.14;

// Input
q    = input("Enter the value of q: ");                // Charge in Coulombs (5 microCoulombs)
ax   = input("Enter the value of ax: ");
ay   = input("Enter the value of ay: ");
bx   = input("Enter the value of bx: ");
by   = input("Enter the value of by: ");

// Calculate distance from origin
r1 = sqrt(ax^2 + ay^2);
r2 = sqrt(bx^2 + by^2);

// Electric potential at points
v1 = q / (4 * pi * e * r1);
v2 = q / (4 * pi * e * r2);

// Potential difference
v = v1 - v2;

// Display values
disp("The value of v1 = " + string(v1) + " V");
disp("The value of v2 = " + string(v2) + " V");
disp("The electric potential difference (v1 - v2) = " + string(v) + " V");

// Plotting exponential decay
r_plot = linspace(0, 10, 50);
y = v1 * exp(-0.1 * r_plot); 
z = v2 * exp(-0.1 * r_plot);
x = v * exp(-0.1 * r_plot);

// Plot
figure(); 
subplot(2, 2, 1); 
plot2d3(r_plot, y); 
xlabel("Distance (m)");
ylabel("Voltage v1 (V)");
title("Electric Potential v1");

subplot(2, 2, 2); 
plot2d3(r_plot, z); 
xlabel("Distance (m)");
ylabel("Voltage v2 (V)");
title("Electric Potential v2");

subplot(2, 2, 3);
plot2d3(r_plot, x);
xlabel("Distance (m)");
ylabel("Voltage Difference (V)");
title("Potential Difference (v1 - v2)");
