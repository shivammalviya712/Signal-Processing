function y = fun5(f, t)
  
    f = @(x) f(x-1);
    y = f(t);