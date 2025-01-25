# Command to Clear Command History
history -c

# Command to Clear Workspace with all Variables and Loaded Packages
clear all

# Command to Clear Command Window
clc

# Week 10 - In Class Practice Code
F = zeros(1,401);
R = zeros(1,401);

F(1) = 110;
R(1) = 1000;
m = 11;

for i=1:400
  F(i+1) = 0.88*F(i) + 0.0001*R(i)*F(i);
  R(i+1) = -0.0003*R(i)*F(i) + 1.039*R(i) - m;
end
F
R

n = [0:400];

figure(1)
plot(n, F, '*r', n, R, '*b');
title('Time Plots');



xlabel('Time');
ylabel('Population');
legend('Fox', 'Rabit', 'Location', 'northwest');

figure(2)
plot(F,R,'*k')
xlabel('Fox Population')
ylabel('Rabbit Population')
title('Trajectory');
