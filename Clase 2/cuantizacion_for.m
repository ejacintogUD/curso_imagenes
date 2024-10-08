%cargo la imagen
imagen = imread('flor.jpg');

% tomo los diferentes colores de la imagen 
imagen2 = imagen(:,:,1);
imagen3 = imagen(:,:,2);
imagen4 = imagen(:,:,3);

% recombinacion de las partes de la imagen en una sola
imagen5(:,:,1) = imagen3;  
imagen5(:,:,2) = imagen4;
imagen5(:,:,3) = imagen2;

 % cambio para invertir colores
subplot(2,2,1), imshow(imagen5) 
subplot(2,2,2), imshow(imagen2)
subplot(2,2,3), imshow(imagen3)
subplot(2,2,4), imshow(imagen4)

