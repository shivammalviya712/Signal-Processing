function X =  fou_transform_ct(x)
   
    x = @(w, t) x(t) .* exp(-w*t*1j);
    X = @(w) integral(@(t) x(w, t), -inf, inf, 'ArrayValued', true);
  
    spectrum(X)