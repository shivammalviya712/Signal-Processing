function odd_plot(fun)
    
    fun = @(t) ((fun(t) - fun(-t))/2);
    figure('name', 'Ood Plot');
    Plot(fun, -10, 10);    
