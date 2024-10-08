clc
close all
clear all

imagen = imread('semillas.jpg');    % cargo la imagen
gris = rgb2gray(imagen);            % la convierto a gris
gris_d = double(gris);             %se convierte el formato numerico a presicion doble
    
if gris < 100    % se aplica la funcion para realsar el contraste
    gris_tenue = gris_d*1.7;
else if  gris < 150
        gris_tenue =  gris_d*2 - 130;
else
    gris_tenue =  gris_d*0.8+51;
end
end
               
max ( max(gris_tenue));             % se calcula el maximo valor de la matriz para escalizar
gris_tenue = gris_tenue* 255 /max ( max(gris_tenue));% se escaliza la imagen
gris_f = uint8(gris_tenue);          % se pasa cada punto al formato numerico de la imagen

figure()
imshow(gris_f)
