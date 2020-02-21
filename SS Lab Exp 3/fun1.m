function y = fun1(f, t)
  
    n = length(t);
    y = zeros(1, n);
    d = t(2) - t(1);
    
    for i = 2:n
      y(i) = y(i-1) + f(t(i))*d;
    end
  
  
