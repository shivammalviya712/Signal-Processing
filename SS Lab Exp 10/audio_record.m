function audio_record()

    fs = 10000;
    b = 8;

    audio_object = audiorecorder(fs, b, 2);
    disp('Start Speaking');
    recordblocking(audio_object, 3);
    disp('Stop Speaking');
    audio = getaudiodata(audio_object);
    audiowrite('audio.wav', audio, fs)



