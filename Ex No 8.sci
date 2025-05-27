clc;
clear;

// Input values
r1 = input("Enter the value of inner radius r1 (in meters): ");
r2 = input("Enter the value of outer radius r2 (in meters): ");
er = input("Enter the value of relative permittivity er: ");

// Constants
e0 = 8.854e-12; // Permittivity of free space (F/m)
pi = %pi; // Use built-in accurate pi
e = e0 * er;

// Capacitance per unit length for coaxial cable: C = (2 * π * ε) / ln(r2/r1)
if r2 > r1 then
    c = (2 * pi * e) / log(r2 / r1);
    disp("Capacitance per unit length (F/m): " + string(c));
else
    disp("Error: Outer radius r2 must be greater than inner radius r1.");
    return;
end

// Plotting capacitance decay with distance (exponential decay sample)
x = linspace(0, 10, 50);
y = c * exp(-0.1 * x);

figure();
plot(x, y);
xlabel("Distance (m)");
ylabel("Capacitance (F/m)");
title("Capacitance Decay (Sample) - Coaxial Cable");
