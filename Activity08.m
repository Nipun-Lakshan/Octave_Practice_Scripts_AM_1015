clear all
clc
n = [0:100];
b = 1.5; %change values of b and observe behaviour
a_n = zeros(1,101);
a_n(1) = 0.1

for i =1:100
  a_n(i+1) = b * a_n(i);
 endfor
a_n

plot(n,a_n,"b")
