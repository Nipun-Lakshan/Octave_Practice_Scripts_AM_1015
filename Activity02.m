#x=0:pi/3:4*pi
x=linspace(0,4*pi,1000)
y = sin(x)
plot(x,y)
xlabel("X Axis")
ylabel("Function Value")
title("Sin Function")
hold on
z=cos(x)
plot(x,z,"*r")
hold off
legend("sin","cos")
grid on
