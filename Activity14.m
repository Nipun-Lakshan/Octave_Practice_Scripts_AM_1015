# Command to Clear Command History
history -c

# Command to Clear Workspace with all Variables and Loaded Packages
clear all

# Command to Clear Command Window
clc

# Week 08 - In Class Practice Code
F = zeros(1,501);
R = zeros(1,501);

F(1) = 110;
R(1) = 900;

for i=1:500
  F(i+1) = 0.88*F(i) + 0.0001*R(i)*F(i);
  R(i+1) = -0.0003*R(i)*F(i) + 1.039*R(i);
endfor
F
R

n = [0:500];

figure(1)
plot(n, F, '*r', n, R, '*b');
title('Time Plots');
xlabel('Time');
ylabel('Population');
legend('Fox', 'Rabit', 'Location', 'northwest');
