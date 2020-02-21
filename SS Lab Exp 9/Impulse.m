function Impulse()

    syms t
    sympref('HeavisideAtOrigin', 1);
    
    x = @(t) dirac(t);
    x = @(w, t) x(t) * exp(-w*t*1j);
    X = @(w) int( x(w, t), t, -inf, inf);
  
    spectrum(X)
    
    
    
    
    
    