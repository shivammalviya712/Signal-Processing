function ques3(fs)
    
    [audio, f]= audioread('audio.wav');
    audio = audio(1:end, 1:1);
    T = 1/f;
    Ts = 1/fs;
    
    % Interplotation
    t = 0:T:3-T;
    ts = 0:Ts:3-Ts;
    audio_sam = interp1(t, audio, ts, 'linear', 'extrap');
    
    % Plotting
    figure()
    
    % Plotting Original Audio
    subplot(1, 2, 1)
    plot(t, audio, 'b')
    title('Original Audio')
    xlabel('Time')
    ylabel('Intensity')
    
    % Plotting Sampled Audio
    subplot(1, 2, 2)
    plot(ts, audio_sam, 'b')
    title('Sampled Audio')
    xlabel('Time')
    ylabel('Intensity')
    
    sound(audio)
    pause(3)
    sound(audio_sam)
    