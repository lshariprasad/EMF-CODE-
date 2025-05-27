clc;
clear;

theta_1 = input("Enter the value of theta1 (in degrees): ");
theta_2 = input("Enter the value of theta2 (in degrees): ");
m_1 = input("Enter the value of m1: ");

tan_ratio = tand(theta_1) / tand(theta_2);
m_2 = m_1 * (tan_ratio)^2;

disp("THE VALUE OF M2 IS: " + string(m_2));
