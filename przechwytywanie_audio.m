Fs = 44100; 
NumChannels = 1;
nBits = 8;
recObj = audiorecorder (Fs,nBits,NumChannels);
disp('Recording has started');
recordblocking(recObj,5); 
disp('End of Recording.');
y = getaudiodata (recObj);
audiowrite('test.wav', y, Fs);
