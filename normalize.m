function outfile = normalize(inpfile)
[x, fs] = audioread(inpfile);
        [loudness, LRA] = integratedLoudness(x,fs);
        target = -23;
        gaindB = target - loudness;
        gain = 10^(gaindB/20);
        xn = x.*gain;
        audiowrite(inpfile, xn, fs);
outfile=inpfile;
end