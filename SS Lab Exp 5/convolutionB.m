function convolutionB(x, h)
  

% Calculation of y
  
  syms y(n)  
  
  
  % Manipulation of impulse response and input signal.
  
  syms h_cal(n)
  syms x_cal(n)
  syms T
  
  x_cal(T) = subs(x(n), n, T);
  
  h_cal(n) = h(n);
  h_cal(T) = subs(h(n), n, n-T);
  
  t = 0:20;
  x_val = x_cal(t);
  h_val = h_cal(t);
  
  
  % Convolving y

  y(n) = sum(x_val.*h_val);
  
  
  % Ploting Preparation
  t_p = 0:20;
  x_p = double(x(t_p));
  h_p = double(h(t_p));
  y_p = double(y(t_p)); 
  y_conv = conv(x_p, h_p);
  y_conv = y_conv(1:21);
   
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
  plot(t_p, y_conv, 'Ob', 'LineWidth', 4); 
  title('y(t) conv');
  xlabel('TIME');
  ylabel('OUTPUT CONV');
  xlim([t_p(1) t_p(end)]);
  xticks(t_p);
  
