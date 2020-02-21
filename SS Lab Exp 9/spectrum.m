function spectrum(X)

    w_p = -5:0.1:5;
    X_p = X(w_p);
    
    mag_X = abs(X_p);
    pha_X = angle(X_p);
    
    figure();
    plot(w_p, mag_X, '-g','LineWidth', 2);
    title('Magnitude Spectrum');
    ylabel('Magnitude');
    xlabel('Frequency');
    
    figure();
    plot(w_p, pha_X, '-r','LineWidth', 2);
    title('Phase Spectrum');
    ylabel('Phase');
    xlabel('Frequency');


