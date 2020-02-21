function Square(tau)

    sympref('HeavisideAtOrigin', 1);
    
    x = @(t) (heaviside(t + tau) - heaviside(t - tau));
    fou_transform_ct(x);