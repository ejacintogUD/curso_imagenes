close all;
clear 
clc

im = imread('craneo.jpg');

im_bit1 = bitand(im, 64,"uint8")*4;

figure()
imshow(im_bit1)