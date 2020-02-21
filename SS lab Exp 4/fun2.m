function y = fun2(f, t)
  
    n = length(t);
    y = zeros(1, n);
    d = t(2) - t(1);
    
    y(n) = (f(t(n)) - f(t(n-1)))/d;
    for i = 1:n-1
      y(i) = (f(t(i+1)) - f(t(i)))/d;
    end