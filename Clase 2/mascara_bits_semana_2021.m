clc 
clear
close all

im = imread('craneo.jpg'); 

im_masc = bitand(im, 0b10000000)*2;

figure()
subplot(1,2,1),imshow(im)
subplot(1,2,2),imshow(im_masc)


