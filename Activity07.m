clear all
clc
tx = ty = linspace(-8, 8, 41);
[xx, yy] = meshgrid(tx, ty);
tz = yy.^4 + xx.^3 + 3*xx.^2 + 4*yy.^2 - 4*xx*yy - 5*yy + 8;
% tz = xx.^2 + yy.^2
mesh(tx, ty, tz);
xlabel("tx");
ylabel("ty");
zlabel("tz");
title("3-D Sombrero Plot");
