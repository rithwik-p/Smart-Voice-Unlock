close all; clear all; clc
    
    recobj = audiorecorder(48000,16,1,1);
    disp('Please Speak the Password');
    recordblocking(recobj,3);
    disp('You have spoken');
    play(recobj);
    k = getaudiodata(recobj);
    audiowrite('pass.wav',k,48000);
    


   % fprintf('Enter the name of the recording');
   % chr1=input();
   % ch1='.wav';
   % inp=strcat(chr1,ch1);
    
    
    inpfile1=normalize('pass.wav');
    inpfile2=normalize('5.wav');
    
    m = datasetcreation(inpfile1,inpfile2);
    feat = mapFeature(m);
    theta =[-0.422676652350110;0.0963869335481751;-0.00210807385072282;1.51210580128127e-05];
    predicti=predict(theta,feat(:,1)');
    if predicti == 1
        fprintf('Password match!\n');
        w = text2speech('Its a password match','en');
        audioplay(w);
    else
        fprintf('Please try again!\n');
    end

    