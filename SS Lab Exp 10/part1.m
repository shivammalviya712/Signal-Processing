function part1( tau, T, fs, ques)

    if (ques == 1)
        x = x1(tau, T);
    
    elseif (ques == 2)
        x = x2(tau, T);
    
    end
       
    Ts = 1 / fs;
    xs = @(n) x(Ts*n);
    
    % PLOTTING 
    t_p = -T:0.01:T;
    x_p = x(t_p);
    
    n_p = -ceil(T/Ts):1:ceil(T/Ts);
    xs_p = xs(n_p);
    
    figure();
    % Plotting x(t)
    subplot(1, 2, 1);
    plot(t_p, x_p, '-r', 'LineWidth', 4);
    ylabel('Signal');
    xlabel('Time');
    axis([-T T -0.2 1.1]);
    
    % Plotting xs(t)
    subplot(1, 2, 2);
    plot(n_p, xs_p, 'og', 'LineWidth', 4);
    ylabel('Signal');
    xlabel('Time');
    axis([-ceil(T/Ts) ceil(T/Ts) -0.2 1.1]);

                                          