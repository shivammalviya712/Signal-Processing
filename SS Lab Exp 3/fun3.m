function y = fun3(f, t)
  
    f = @(t) f(t-1);
    y = fun2(f, t);