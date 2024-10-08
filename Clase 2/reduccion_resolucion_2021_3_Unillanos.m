clear 
close all
clc
im = imread('flor.jpg');
figure()
imshow(im)
[r c d] = size(im);
for D = 1:d
    for C = 1:c
        for R = 1:r
            if (mod(R,2)==0 || mod(C,2)==0 )
                im_salida(round(R/2),round(C/2),D) = im(R,C,D);
            end     
        end     
    end 
end 
figure()
imshow(im_salida)

