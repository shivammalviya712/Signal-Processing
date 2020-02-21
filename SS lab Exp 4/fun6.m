function y = fun6(f, t)

  f = @(t) f(2*t);
  y = f(t);
  