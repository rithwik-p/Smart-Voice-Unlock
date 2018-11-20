[y1,Fs1]=audioread('2.wav');

plot(y1(:,1))
figure(1)

[y2,Fs2]=audioread('13.wav');
figure(2)
plot(y2(:,1))


[y3,Fs3]=audioread('85.wav');
figure(3)
plot(y3(:,1))


%filename1='1.wav'


file='wav.AVI';  %  Wav input file 
file1='targetfile.wav';
hmfr= video.MultimediaFileReader(file,'AudioOutputPort',true,'VideoOutputPort',false);
hmfw = video.MultimediaFileWriter(file1,'AudioInputPort',true,'FileFormat','WAV');
while ~isDone(hmfr)
audioFrame=step(hmfr);
step(hmfw,audioFrame);  
end
close(hmfw);
close(hmfr);