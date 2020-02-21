function ques2()

    [audio, fs]= audioread('audio.wav');
    
    % Plotting Audio 
    figure()
    plot(audio, 'b')
    title('Recorded Audio')
    xlabel('Time')
    ylabel('Intensity')