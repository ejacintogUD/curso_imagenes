clc
close all
clear all

im = imread('craneo.jpg');


figure()
imshow(im)

mascara = 192

sal_masc = bitand(im,mascara);
sal_masc = bitcmp(sal_masc, 'uint8');


figure()
imshow(sal_masc)