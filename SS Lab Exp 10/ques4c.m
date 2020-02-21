function ques4c(fs)
    
    [audio, f]= audioread('audio.wav');
    T = 1/f;
    Ts = 1/fs;
    
    % Interplotation
    t = 0:T:3-T;
    ts = 0:Ts:3-Ts;
    audio_sam = interp1(t, audio, ts, 'linear', 'extrap');
 
    N = 3*fs;
    DFT(audio_sam(1:end, 1:1), N, 20000);
