clc;
x = input("Enter the value of x: ");
y = input("Enter the value of y: ");
z = input("Enter the value of z: ");

rho = sqrt(x^2 + y^2);
phi = atan (y / x) * (180 / %pi); // Convert radians to degrees
z=z;

disp("The cylindrical coordinates are:");
disp("rho = " + string(rho));
disp("phi = " + string(phi) + " degrees");
disp("z = " + string(z));
