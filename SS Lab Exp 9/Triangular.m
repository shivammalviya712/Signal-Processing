function Triangular(tau)

    sympref('HeavisideAtOrigin', 1);
    
    x = @(t) (heaviside(t + tau) - heaviside(t - tau)) .* (tau - abs(t));
    fou_transform_ct(x);