close all
clear all

im = imread('flor.jpg');
f_r= 16;

for j=1:3
    for i=1:800
        for n=1:800
            if (mod(i,f_r) == 0 & mod(n,f_r)== 0)
                  im_low(floor(i/f_r),floor(n/f_r),j) = im(i,n,j);
            end
        end 
    end  
end     



figure()
imshow(im)

figure()
imshow(im_low)

im_out = imresize(im_low,16,'bicubic');

figure()
imshow(im_out)








