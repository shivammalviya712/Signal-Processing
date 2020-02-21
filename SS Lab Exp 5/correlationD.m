function correlationD(x, h)

% Calculation of y
  
  syms y(n)  
  
  
  % Manipulation of impulse response and input signal.
  
  syms h_cal(n)
  syms x_cal(n)
  syms T
  
  x_cal(T) = subs(x(n), n, T);
  
  h_cal(n) = h(n);
  h_cal(T) = subs(h(n), n, n+T);
  
  t = -10:10;
  x_val = x_cal(t);
  h_val = h_cal(t);
  
  
  % Convolving y

  y(n) = sum(x_val.*h_val);
  
  
  % Ploting Preparation
  t_p = -10:10;
  n = length(t_p);
  x_p = double(x(t_p));
  h_p = double(h(t_p));
  y_p = double(y(t_p)); 
  y_corr = xcorr(h_p, x_p);
  i1 = (n+1)/2;
  i2 = (3*n-1)/2;
  y_corr = y_corr(i1:i2);
  
  
  % PLOTING
  
  subplot(2, 2, 1);
  plot(t_p, x_p, 'Or', 'LineWidth', 4); 
  title('x(t)');
  xlabel('TIME');
  ylabel('INPUT');
  xlim([t_p(1) t_p(end)]);
  xticks(t_p);
  
  subplot(2, 2, 2);
  plot(t_p, h_p, 'Om', 'LineWidth', 4);
  title('h(t)');
  xlabel('TIME');
  ylabel('IMPULSE RESPONSE');
  xlim([t_p(1) t_p(end)]);
  xticks(t_p);
  
  subplot(2, 2, 3);
  plot(t_p, y_p, 'Og', 'LineWidth', 4); 
  title('y(t)');
  xlabel('TIME');
  ylabel('OUTPUT');
  xlim([t_p(1) t_p(end)]);
  xticks(t_p);

  subplot(2, 2, 4);
  plot(t_p, y_corr, 'Ob', 'LineWidth', 4); 
  title('y(t) xcorr');
  xlabel('TIME');
  ylabel('OUTPUT XCORR');
  xlim([t_p(1) t_p(end)]);
  xticks(t_p);
  
