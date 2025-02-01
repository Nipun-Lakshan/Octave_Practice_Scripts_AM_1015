# Command to Clear Command History
history -c

# Command to Clear Workspace with all Variables and Loaded Packages
clear all

# Command to Clear Command Window
clc

function[t, y] = odeNC(y0, T)
  k = -0.02877;
  f = @(t, y) k*(y-t);
  trange = [0:1:120]; #trange[0,120]

  [t, y] = ode45(f, trange, y0);

  disp([t, y]);
  plot(t, y)

endfunction
