clc clear all
pkg load symbolic

syms a b c x
solve(a*x^2+b*x+c==0,x);

syms p q r s
solve(p*x^3 + q*x^2 + r*x + s == 0, x);

syms y
solve(a*x*y - b*x - 1 ==0, x);
solve(a*x*y + b*x - 1 ==0, y);

[sol_x, sol_y]= solve([2*x + y == 6, x-y==3],[x,y]);
char(sol_x);
char(sol_y);

f = @(x) x^2 + sin(x) - 7;
solution = fsolve(f,0);
solution = fsolve(f,-5);
solution = fsolve(f,-10);
solution = fsolve(f,4);
