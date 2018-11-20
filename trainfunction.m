function [] = trainfunction()
ch='.wav';
r=randi([1,59],1,15);
hello = [17,20,28,37,38,40,43,47,54,56];
fp = fopen('corrdata.txt','w');
for i=1:59
    chr=int2str(i);
    inpfile1=strcat(chr,ch);
    for j=1:10
        num=hello(j);
        chr=int2str(num);
        inpfile2=strcat(chr,ch);
    
        inpfile1=normalize(inpfile1);
        inpfile2=normalize(inpfile2);
    
        m = datasetcreation(inpfile1,inpfile2);
        if m>10
            out = mapFeature(m);
            fprintf(fp,'%f,%f,%f,%f,1\n',out(1),out(2),out(3),out(4));
        end
        
    end
end
fclose(fp);
    %fprintf('The m value is = %d\n', m);
    
fp = fopen('corrdata.txt','a');

%r1=randi([1,59],1,15);
%r2=randi([61,109],1,15);
for i=61:109
    chr=int2str(i);
    inpfile1=strcat(chr,ch);
    for j=1:10
        num=hello(j);
        chr=int2str(num);
        inpfile2=strcat(chr,ch);
    
        inpfile1=normalize(inpfile1);
        inpfile2=normalize(inpfile2);
      
        m = datasetcreation(inpfile1,inpfile2);
        if m<20
            out = mapFeature(m);
            fprintf(fp,'%f,%f,%f,%f,0\n',out(1),out(2),out(3),out(4));
        end
        
    end
end

fclose(fp);