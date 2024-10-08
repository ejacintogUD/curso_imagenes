
%abre la imagen
imagen  = imread('flor2.jpg');

%convierte a grises
%imagen = rgb2gray(imagen);

x_max = 1024;%800
y_max = 1024;%800



%ciclo para borrar las filas y columnas pares
%clear imagen2

for x = 3: x_max
    for y = 3: y_max
        %si son pares
        if mod(x,2)==0 || mod(y,2)==0  
            imagen2(round(x/2),round(y/2)) = imagen(x,y);
        end    
    end
end


%visualiza las 2 imagenes
%figure(2)
imshow(imagen)

figure(3)

imshow(imagen2)