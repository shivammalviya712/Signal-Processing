function fun = time_scale(fun, tau);
    
    fun = @(t) fun(t/tau);
    figure('name', 'Time Scaling');
    Plot(fun, -10, 10); 
     
