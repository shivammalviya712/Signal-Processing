function ques4b()
    
    [audio, f]= audioread('audio.wav');
    N = 3*f;
    DFT(audio(1:end, 1:1), N, 20000);
