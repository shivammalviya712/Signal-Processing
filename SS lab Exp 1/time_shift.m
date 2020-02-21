function fun = time_shift(fun, tau)
  
    fun = @(t) fun(t-tau);
    figure('name', 'Time Shifting');
    Plot(fun, -10, 10);
    
