clc;
clear;

// Self Inductance
n = input("Enter the turns of self inductance: ");
phi = input("Enter the phi value: ");
i = input("Enter the current flowing in inductance: ");
L = n * phi / i;
disp("Self Inductance L = " + string(L) + " H");

// Mutual Inductance
n1 = input("Enter the primary turn: ");
n2 = input("Enter the secondary turn: ");
phi12 = input("Enter the ϕ12: ");
phi21 = input("Enter the ϕ21: ");
i1 = input("Enter the CURRENT 1: ");
i2 = input("Enter the CURRENT 2: ");
M12 = n2 * phi12 / i1;
M21 = n1 * phi21 / i2;
disp("Mutual Inductance M12 = " + string(M12) + " H");
disp("Mutual Inductance M21 = " + string(M21) + " H");

// Inductance of Solenoid and Toroid
LENGTH = input("Enter the length value (m): ");
Radius = input("Enter the radius value (m): ");
mu0 = 4 * %pi * 1e-7; // Permeability of free space

solenoid = mu0 * i / LENGTH;
toroid = mu0 * i / (2 * %pi * Radius);
disp("Inductance of Solenoid = " + string(solenoid) + " H");
disp("Inductance of Toroid = " + string(toroid) + " H");

// Time response plots
a = linspace(0,10,50);
b = L * exp(-0.1 * a);
c = M12 * exp(-0.1 * a);
d = M21 * exp(-0.1 * a);
e = solenoid * exp(0.1 * a);
f = toroid * exp(0.1 * a);

// Plotting
scf(0);
subplot(2,2,1);
plot(a, b);
xlabel("Time");
ylabel("Self Inductance (H)");
title("Self Inductance vs Time");

subplot(2,2,2);
plot(a, c);
xlabel("Time");
ylabel("Mutual Inductance M12 (H)");
title("Mutual Inductance M12 vs Time");

subplot(2,2,3);
plot(a, d);
xlabel("Time");
ylabel("Mutual Inductance M21 (H)");
title("Mutual Inductance M21 vs Time");

scf(1);
subplot(1,2,1);
plot(a, e);
xlabel("Time");
ylabel("Inductance (H)");
title("Solenoid Inductance vs Time");

subplot(1,2,2);
plot(a, f);
xlabel("Time");
ylabel("Inductance (H)");
title("Toroid Inductance vs Time");
