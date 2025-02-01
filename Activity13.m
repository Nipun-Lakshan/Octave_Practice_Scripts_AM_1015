# Command to Clear Command History
history -c

# Command to Clear Workspace with all Variables and Loaded Packages
clear all

# Command to Clear Command Window
clc

On = zeros(1, 30); # 29 Predictions + 1 Initial Value
Hn = zeros(1, 30); # 29 Predictions + 1 Initial Value

On(1) = 125;
Hn(1) = 175;

k1 = 0.2;
k2 = 0.3;
k3 = 0.001;
k4 = 0.002;

for i=1:29
  On(i+1) = (1+k1)*On(i) - k3*On(i)*Hn(i);
  Hn(i+1) = (1+k2)*Hn(i) - k4*On(i)*Hn(i);
endfor
On;
Hn;

n = [0:29];

figure(1)
plot(n, On, '*r')
title('On Behaviour')
xlabel('n')
ylabel('On')

figure(2)
plot(n, Hn, '*b')
title('Hn Behaviour')
xlabel('Hn')
ylabel('n')

figure(3)
plot(On, Hn, '*k')
title('Trajectory')
xlabel('On')
ylabel('Hn')
