function ques6(tau, T, n, flag1)
    
    if (flag1 == 1)
        x = x1(tau, T);
    else
        x = x2(tau, T);
    end
    
    x = @(t) x(t);
    %PLOTTING X
    t_p_x = -T*1.5:0.01:T*1.5;
    x_p = x(t_p_x);
    
    figure();
    plot(t_p_x, x_p, '-m', 'LineWidth', 2);
    title('Input Signal');
    ylabel('Signal');
    xlabel('Time')
    
    %PLOTTING FOURIER COEFFICIENTS
    part2(x, n, T);
