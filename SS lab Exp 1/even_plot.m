function even_plot(fun)
    
    fun = @(t) ((fun(t) + fun(-t))/2);
    figure('name', 'Even Plot');
    Plot(fun, -10, 10);    
