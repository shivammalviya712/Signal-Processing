function pow = power(f, T)
  
    fprintf('The signal is periodic, so its power will be equals to the power over one period.\n')
    f = @(t) (f(t)).^2;
    ene = integral(f, -T, T);
    pow = ene / (2*T);
