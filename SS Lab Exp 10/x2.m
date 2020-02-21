function y = x2(tau, T)

    sympref('HeavisideAtOrigin', 1);

        y = @(t)(heaviside(t) - heaviside(t - 2*tau)).*(tau  - abs(t-tau));
        y = @(t) y(mod(t, T));
        y = @(t) y(t+tau);
        
