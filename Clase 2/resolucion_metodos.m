clear
close all
clc 
im = imread('flor.jpg');
im_small = imresize(im, 0.5, "bicubic");
im_big = imresize(im_small, 2, "bicubic");


figure()
subplot(1,3,1), imshow(im);
subplot(1,3,2), imshow(im_small);
subplot(1,3,3), imshow(im_big);

