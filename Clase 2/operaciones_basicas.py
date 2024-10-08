import cv2

# cargar el archivo PNG indicado
img = cv2.imread('flor.jpg', cv2.IMREAD_GRAYSCALE)

# guardar la imagen en formato JPG
cv2.imwrite('save.jpg', img)

cv2.imshow('hola',img)

cv2.waitKey(0)