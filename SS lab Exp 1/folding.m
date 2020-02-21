function fun = folding(fun)
  
    fun = @(t) fun(-t);
    figure('name', 'Folding');
    Plot(fun, -10, 10);
    
