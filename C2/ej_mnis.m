% Ejemplo de carga de banco im�genes descargada de:
% https://chromium.googlesource.com/external/github.com/tensorflow/tensorflow/+/r0.7/tensorflow/g3doc/tutorials/mnist/download/index.md
% http://yann.lecun.com/exdb/mnist/
% Los archivos descargados est�n en formato *.gz, se descomprimen y se
% dejan en la misma ubicaci�n de este archivo

imagenes = 't10k-images.idx3-ubyte';
labels   = 't10k-labels.idx1-ubyte';
[x,y]=mnist_parse(imagenes, labels);
size(x)     % 28X28X10000 -> 10.000 im�genes de 28X28 pixeles
size(y)

n_img = 1;  % n�mero de la imagen a capturar/visualizar
y(n_img)
x(:,:,n_img)
imshow(x(:,:,n_img))

% 