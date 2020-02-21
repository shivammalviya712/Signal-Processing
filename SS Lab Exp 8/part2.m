function part2(x, n, T)
   

    [y, C] = fou_exp(x, n, T);
    
    %PLOTTING fourier coefficients
    t_p = -n:n;
    
    figure();
    plot(t_p, C, 'ob', 'LineWidth', 2);
    title('Fourier Coefficients');
    ylabel('Signal');
    xlabel('Frequency');
    