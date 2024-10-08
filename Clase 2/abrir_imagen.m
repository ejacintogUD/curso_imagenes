%este programa muestra como se abren imagenes con MATLAB
clc

imagen1 = imread('D-s.jpg');  %funcion para abrir imagenes

figure(1)
imshow(imagen1);

%visualiza la matriz
imagen1_grises = rgb2gray(imagen1)

figure(2)
mesh(double(imagen1_grises))

%figure(3)
%surf(double(imagen1_grises))

