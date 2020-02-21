function fun = amplitude_scale(fun, A)
  
    fun = @(t) (A * fun(t));
    figure('name', 'Amplitude Scaling');
    Plot(fun, -10, 10);
    
