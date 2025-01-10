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

k1 = 0.2
k2 = 0.3
k3 = 0.001
k4 = 0.002

for i=1:29
  On(i+1) = (1+k1)*On(i) - K3*On(i)*Hn(i);
  Hn(i+1) = (1+k2)*Hn(i) - k4*On(i)*Hn(i);
endfor
On
Hn

n = [0:29];

##figure(1)
##plot(n, Fn, '*r')
##title('Fox Population vs Time')
##xlabel('Foxes')
##ylabel('Time')
##
##figure(2)
##plot(n, Rn, '*b')
##title('Rabbit Population vs Time')
##xlabel('Rabbits')
##ylabel('Time')
##
##figure(3)
##plot(Fn, Rn, '*k')
##title('Trajectory')
##xlabel('Fox Population Over Time')
##ylabel('Rabit Population Over Time')

