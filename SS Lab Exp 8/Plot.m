function Plot(x, yn1, yn2, T)
    
    t_p_x = -T*1.5:0.01:T*1.5;
    x_p = x(t_p_x);
    t_p_y = -1.5*T:0.1:1.5*T;
    yn1_p = double(subs(yn1, t_p_y));
    yn2_p = double(subs(yn2, t_p_y));
    
    figure();
    plot(t_p_x, x_p, '-m', 'LineWidth', 2);
    title('Input Signal');
    ylabel('Signal');
    xlabel('Time');
    
    figure();
    
    subplot(2, 1, 1);
    plot(t_p_y, yn1_p, '-g','LineWidth', 2);
    title('n = 10');
    ylabel('Signal');
    xlabel('Time');
    axis([-1.5*T 1.5*T -0.2 1.1]);
    
    subplot(2, 1, 2);
    plot(t_p_y, yn2_p, '-r','LineWidth', 2);
    title('n = 20');
    ylabel('Signal');
    xlabel('Time');
    axis([-1.5*T 1.5*T -0.2 1.1]);
        
        
