function Constant()

    syms tau
    sympref('HeavisideAtOrigin', 1);
    
    x = rect();
    x = @(w, t, tau) x(t, tau) .* exp(-w*t*1j);
    X = @(w, tau) integral(@(t) x(w, t, tau), -inf, inf, 'ArrayValued', true);
    X = @(w) limit(X(w, tau), tau, inf)
    
    spectrum(X);
    
