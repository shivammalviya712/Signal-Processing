function x = rect()

    sympref('HeavisideAtOrigin', 1);
    
    x = @(t, tau) (heaviside(t + tau) - heaviside(t - tau));