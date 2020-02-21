function even_Plot(fun)
    
    fun = @(t) ((fun(t) + fun(-t))/2);
    Plot(fun);    
