function DFT(xp, N, max_w)

    np = 1:N;
    steps = 2000;
    step_size = max_w / steps;
    wp = 0:step_size:max_w - step_size;
   
    Xp = exp(-1j * wp' * np) * xp;
    
    % Plotting X(jw)
    figure();
    plot(wp', Xp, '-r', 'LineWidth', 1);
    title('Discreet Time Fourier Transform');
    xlabel('Angular Frequency');
    ylabel('Envelope');
    xlim([0 max_w]);
    
    




