pat1 = imread('http://i.stack.imgur.com/oIumJ.png');

%// Change
spec_orig = fft2(double(pat1)); 
spec_orig2 = abs(spec_orig);
spec_img1 = fftshift(spec_orig2);
spec_img = fftshift(spec_orig);
figure (1);
imshow(spec_img1);

for j = 115:125
    for n = 96:106
        spec_img(n,j) = 0; 
    end
    for n = 216:226
        spec_img(n,j) = 0; 
    end
    for n = 274:284
        spec_img(n,j) = 0; 
    end
    for n = 298:308
        spec_img(n,j) = 0; 
    end
    for n = 12:22
        spec_img(n,j) = 0; 
    end
    for n = 37:47
        spec_img(n,j) = 0; 
    end
end

%// Change
ptnfx = real(ifft2(ifftshift(spec_img)));
figure (2);


imshow(pat1);

figure (3);
imshow(ptnfx,[]);