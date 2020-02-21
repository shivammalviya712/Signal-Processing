function correlationC(x, h)

  syms T
  syms y(t)

  t_p = -10:0.01:10; 
  n = length(t_p);
  x_p = double(x(t_p));
  h_p = double(h(t_p));
  y_corr = xcorr(h_p, x_p);
  i1 = (n+1)/2;
  i2 = (3*n-1)/2;
  y_corr = y_corr(i1:i2) / 100;
  
  subplot(2, 2, 1);
  plot(t_p, x_p, '-r', 'LineWidth', 4);
  title('x1(t)');
  xlabel('TIME');
  ylabel('INPUT 1');
  xlim([t_p(1) t_p(end)]);
  xticks(t_p(1):t_p(end));

  subplot(2, 2, 2);
  plot(t_p, h_p, '-m', 'LineWidth', 4);
  title('h(t)');
  xlabel('TIME');
  ylabel('INPUT 2');
  xlim([t_p(1) t_p(end)]);
  xticks(t_p(1):t_p(end));

  h(T) = subs(h(t), t, t+T);
  x(T) = subs(x(t), t, T);
  y(t) = int(x*h, T, -200, 200);
  y_p = double(y(t_p));
  
  subplot(2, 2, 3);
  plot(t_p, y_p, '-g', 'LineWidth', 4);
  title('y(t)');
  xlabel('TIME');
  ylabel('OUTPUT');
  xlim([t_p(1) t_p(end)]);
  xticks(t_p(1):t_p(end));

  subplot(2, 2, 4);
  plot(t_p, y_corr, '-b', 'LineWidth', 4); 
  title('y(t) xcorr');
  xlabel('TIME');
  ylabel('OUTPUT XCORR');
  xlim([t_p(1) t_p(end)]);
  xticks(t_p(1) : t_p(end));
  

