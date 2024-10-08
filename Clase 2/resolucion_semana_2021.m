clc
close all
clear 
im = imread('flor2.jpg');
escala = 16;
im_small = imresize(im, 1/escala, "bicubic");
im_new   = imresize (im_small, escala, "bicubic");
figure()
subplot(1,3,1),imshow(im)
subplot(1,3,2),imshow(im_small) 
subplot(1,3,3),imshow(im_new) 



