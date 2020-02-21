function y = fun2(f, t)
  
    n = length(t);
    y = zeros(1, n);
    d = t(2) - t(1);
    
    y(1) = (f(t(2)) - f(t(1)))/d;
    for i = 2:n
      y(i) = (f(t(i)) - f(t(i-1)))/d;
    end