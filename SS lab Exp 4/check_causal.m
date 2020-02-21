function check_causal(Of, If1, If2, tmin, t0)
  
    t = tmin : 0.01 : t0+1;
    n = length(t);
    y1 = Of(If1, t);
    y2 = Of(If2, t);
    if (y1(1, 1:n-100) == y2(1, 1:n-100))
      fprintf('The system is causal.\n');
    else
      fprintf('The system is non_causal.\n');
    end

    
    