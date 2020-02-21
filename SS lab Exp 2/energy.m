function ene = energy(fun)

  fun = @(t) (fun(t)).^2;
  ene = integral(fun, -10^6, 10^6);
  