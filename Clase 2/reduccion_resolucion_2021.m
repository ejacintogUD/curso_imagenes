
im = imread('flor.jpg');

[r c d] = size(im);

for D = 1:d
    for R = 1:r
        for C = 1:c
            if (mod(R,2) == 0 || mod (C,2) == 0)
                im_small(round(R/2),round(C/2),D) = im(R,C,D);
            end    
        end 
    end 
end     
figure()
imshow(im)
figure()
imshow(im_small)

