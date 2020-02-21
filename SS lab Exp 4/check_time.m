function check_time(Of, If, tmin, tmax)

    t = tmin:0.01:tmax;
    k = 2;
    xran = [tmin tmax];
    
    If1 = @(t) If(t);
    y1 = Of(If1, t-k);

    If2 = @(t) If(t-k);
    y2 = Of(If2, t);

    if (y1 == y2)
        fprintf('\nThe given function is time-invariant.\n');

    else
        fprintf('\nThe given function is time-variant.\n');
    
    end

    subplot(2, 2, 1)
    plot(t, If(t), '-g', 'LineWidth', 3);
    xlabel('Time');
    ylabel('Signal');
    title('x(t)');
    xlim(xran);
    
    subplot(2, 2, 2)
    plot(t, Of(If, t), '-c', 'LineWidth', 3);
    xlabel('Time');
    ylabel('Signal');
    title('y(t)');
    xlim(xran);
    
    subplot(2, 2, 3)
    plot(t, y2, '-m', 'LineWidth', 3);
    xlabel('Time');
    ylabel('Signal');
    title('Response of x(t-T)');
    xlim(xran);
    
    subplot(2, 2, 4)
    plot(t, y1, '-r', 'LineWidth', 3);    
    xlabel('Time');
    ylabel('Signal');
    title('y(t-T)');
    xlim(xran);
    