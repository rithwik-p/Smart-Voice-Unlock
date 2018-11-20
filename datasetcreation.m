function m = datasetcreation(filename1,filename2)
%ch='.wav';
voice=audioread(filename1);
x=voice;
x=x';
x=x(1,:);
x=x';


    y=audioread(filename2);
    y=y';
    y=y(1,:);
    y=y';
    y=flip(y);
    z=xcorr(x,y);
    m=max(z);


end