clc 
clear all 

img = imread('craneo.jpg');

masc = 0b00000001;

img_sal_masc = bitand(img, masc, "uint8")*128;

figure()
subplot(1,2,1), imshow(img)
subplot(1,2,2), imshow(img_sal_masc)