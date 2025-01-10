# Command to Clear Command History
history -c

# Command to Clear Workspace with all Variables and Loaded Packages
clear all

# Command to Clear Command Window
clc

Fn = zeros(1, 101); # 100 Predictions + 1 Initial Value
Rn = zeros(1, 101); # 100 Predictions + 1 Initial Value

Fn(1) = 500;
Rn(1) = 200;

for i=1:100
  Fn(i+1) = 0.5*Fn(i) + 0.4*Rn(i);
  Rn(i+1) = -0.17*Fn(i) + 1.1*Rn(i);
endfor
Fn
Rn

n = [0:100];

figure(1)
plot(n, Fn, '*r')
title('Fox Population vs Time')
xlabel('Foxes')
ylabel('Time')

figure(2)
plot(n, Rn, '*b')
title('Rabbit Population vs Time')
xlabel('Rabbits')
ylabel('Time')

figure(3)
plot(Fn, Rn, '*k')
title('Trajectory')
xlabel('Fox Population Over Time')
ylabel('Rabit Population Over Time')

