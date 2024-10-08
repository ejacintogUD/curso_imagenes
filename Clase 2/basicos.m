clc
close all
clear 
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
im1 = imread('flor.jpg');
im2 = imread('flor2.jpg');
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
im2_color(:,:,1) = im2;
im2_color(:,:,2) = im2;
im2_color(:,:,3) = im2;
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
m = size(im1);
im2_resize = imresize(im2_color,[m(1) m(2)]);
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
im_sal = ((double(im1) + double(im2_resize)));
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
maximo = max(max((im_sal)));

im_sal = uint8((im_sal./maximo)*255); % normalizado


figure()
subplot(1,3,1),imshow(im1)
subplot(1,3,2),imshow(im2_resize)
subplot(1,3,3),imshow(im_sal)



