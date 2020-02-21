function check(fun, tmin, tmax)
   
    tol = 0.001;
    t = tmin:0.01:tmax; 
    xran = [tmin tmax];
    
    f = @(t) (x1(t));
    f1 = fun(f, t);
    
    f = @(t) (x2(t));
    f2 = fun(f, t);
    
    f = @(t) (x1(t) + x2(t));
    f3 = fun(f, t);
    
    subplot(2, 2, 1)
    plot(t, x1(t), '-g', 'LineWidth', 3);
    xlabel('Time');
    ylabel('Signal');
    title('x1(t)');
    xlim(xran);
    
    subplot(2, 2, 2)
    plot(t, x2(t), '-c', 'LineWidth', 3);
    xlabel('Time');
    ylabel('Signal');
    title('x2(t)');
    xlim(xran);
    
    subplot(2, 2, 3)
    plot(t, f1+f2, '-m', 'LineWidth', 3);
    xlabel('Time');
    ylabel('Signal');
    title('y(x1(t))+y(x2(t))');
    xlim(xran);
    
    subplot(2, 2, 4)
    plot(t, f3, '-r', 'LineWidth', 3);    
    xlabel('Time');
    ylabel('Signal');
    title('y(x1(t)+x2(t))');
    xlim(xran);
    
    error = abs(f3 - (f1+f2));
    error = find( error > tol);
    if (sum(error) == 0)
        fprintf('\nThe given system is Linear.\n');
      
    else
        fprintf('\nThe given system is Non-Linear.\n');
    end
