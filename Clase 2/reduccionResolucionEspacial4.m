
%abre la imagen
imagen  = IMREAD('flor.jpg');

%convierte a grises
imagen = rgb2gray(imagen);

%imagen temporal
imagenTemp = imagen;


for i = 1: 3
    imagen2 = imresize(imagenTemp,1.5,'bilinear');
    
    imagenTemp = imagen2;
    clear imagen2;  %borra la imagen para redimensionarla
end

%visualiza las 2 imagenes
subplot(1,2,1), imshow(imagen)
subplot(1,2,2), imshow(imagenTemp)