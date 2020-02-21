function ques4a(nau, N, ques)

    if (ques == 1)
        x = x1(nau, N);
        
    elseif (ques == 2)
        x = x2(nau, N);
        
    end
    
    np = 1:N;
    xp = x(np);
    DFT(xp', N, pi*N);
