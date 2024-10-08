
%abre la imagen
imagen  = imread ('craneo.jpg');  %('flor2.jpg');



%convierte a grises
%imagen1 = rgb2gray(imagen);


%baja la cuantizacion
imagen7bits = floor((imagen-1)/2)*2;
imagen6bits = floor((imagen-1)/4)*4;    
imagen5bits = floor((imagen-1)/8)*8;
imagen4bits = floor((imagen-1)/16)*16;
imagen3bits = floor((imagen-1)/32)*32;
imagen2bits = floor((imagen-1)/64)*64;
imagen1bit  = floor((imagen-1)/128)*128



%visualiza las 8 imagenes
subplot(2,4,1), imshow(imagen,[]);
subplot(2,4,2), imshow(imagen7bits);
subplot(2,4,3), imshow(imagen6bits);
subplot(2,4,4), imshow(imagen5bits);
subplot(2,4,5), imshow(imagen4bits);
subplot(2,4,6), imshow(imagen3bits);
subplot(2,4,7), imshow(imagen2bits);
subplot(2,4,8), imshow(imagen1bit);
