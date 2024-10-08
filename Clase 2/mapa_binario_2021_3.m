clear all
close all 
clc

im = imread ("craneo.jpg");
im_masc_bin = bitand(im, 0b01000000, "uint8")*4;

figure()
subplot(1,2,1), imshow(im)
subplot(1,2,2), imshow(im_masc_bin)

