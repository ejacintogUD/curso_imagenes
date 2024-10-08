clc

% Abro la imagen
imagen = imread('D-s.jpg');

imagen2 = rgb2gray(imagen);

imshow(imagen2)

figure(2)

mesh(double(imagen2)) 






