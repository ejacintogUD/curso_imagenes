
%abre la imagen
imagen  = imread('flor2.jpg');

%convierte a grises
%imagen = rgb2gray(imagen);

%imagen temporal
imagenTemp = imagen;

x_max = 1024%800
y_max = 1024%800

for i = 1: 3
    %ciclo para borrar las filas y columnas pares
    for x = 1: x_max
        for y = 1: y_max
            %si son pares
            if mod(x,2)==0 || mod(y,2)==0
                imagen2(round(x/2),round(y/2)) = imagenTemp(x,y);
            end    
        end
    end
    
    imagenTemp = imagen2;
    clear imagen2;  %borra la imagen para redimensionarla
    x_max = x_max/2;
    y_max = y_max/2;
end

%visualiza las 2 imagenes
imshow(imagen)

figure(2)

imshow(imagenTemp)