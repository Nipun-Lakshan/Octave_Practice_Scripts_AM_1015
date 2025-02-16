function solsy(x10,x20)
  close
  t0 = 0 ;
  tf = 500;
  trange = [t0:tf];
  [t, x] = ode45('F', trange, [x10,x20]);
  disp('time  x   y')
  disp([t, x(:,1), x(:,2)])
  figure;
  plot(t, x(:,1), t, x(:,2));
  legend('Predator', 'Prey');
  title('Population over time');
  figure;
  plot(x(:,1), x(:,2));
  title('Trajectory');
endfunction

