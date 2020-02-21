function ene = energy(fun)

  fun = @(t) (fun(t)).^2;
  ene = integral(fun, -10^2, 10^2);
  