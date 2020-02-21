function convolutionA(x, h)

  syms T
  syms y(t)

  t_p = 0:0.01:10;
  n = length(t_p);
  x_p = double(x(t_p));
  h_p = double(h(t_p));
  y_conv = conv(x_p, h_p);
  y_conv = y_conv(1, 1:n) / 1000;

  subplot(2, 2, 1);
  plot(t_p, x_p, '-r', 'LineWidth', 4);
  title('x(t)');
  xlabel('TIME');
  ylabel('INPUT');
  xlim([t_p(1) t_p(end)]);
  xticks(t_p(1) : t_p(end));

  subplot(2, 2, 2);
  plot(t_p, h_p, '-m', 'LineWidth', 4);
  title('h(t)');
  xlabel('TIME');
  ylabel('IMPULSE RESPONSE');
  xlim([t_p(1) t_p(end)]);
  xticks(t_p(1) : t_p(end));

  h(T) = subs(h(t), t, t-T);
  x(T) = subs(x(t), t, T);
  con = x*h; 
  y(t) = int(con, T, -inf, inf);

  subplot(2, 2, 3);
  plot(t_p, y(t_p), '-g', 'LineWidth', 4);
  title('y(t)');
  xlabel('TIME');
  ylabel('OUTPUT');
  xlim([t_p(1) t_p(end)]);
  xticks(t_p(1) : t_p(end));

  subplot(2, 2, 4);
  plot(t_p, y_conv, '-b', 'LineWidth', 4); 
  title('y(t) conv');
  xlabel('TIME');
  ylabel('OUTPUT CONV');
  xlim([t_p(1) t_p(end)]);
  xticks(t_p(1) : t_p(end));
  
