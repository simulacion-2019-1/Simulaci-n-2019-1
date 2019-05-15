clc;clear;
im = imread('casa01.jpg');
[filas,columnas,z] = size(im)
n = 3;          m = 4;
ancho = floor(columnas/m)
alto  = floor(filas/n)
ns    = randperm(n*m)
% copia de la imagen original con tamaños adecuados
final = im(1:alto*n,1:ancho*m,:);
final2= final;
size(final);
% subplot(2,1,1)
% imshow(final);
for i=1:n
    for j=1:m
        inix = (ancho*(j-1)+1);
        finx = (ancho*(j)+1)-1;
        iniy = (alto*(i-1)+1);
        finy = (alto*(i)+1)-1;
        [num2str(inix) ':' num2str(finx) ' --- '...
            num2str(iniy) ':' num2str(finy)];
        submatriz = final(iniy:finy,inix:finx,:);
        indice1 = j+(i-1)*m
        indice = ns(indice1);
        % subplot(n,m,indice);
        subplot(n,m,ns(indice1));
        fila    =floor((indice-1)/m)+1;
        columna =mod(indice-1,m)+1;
        [num2str(fila) '-' num2str(columna) ' --- '...
            num2str(ns(indice))]
        inix = (ancho*(columna-1)+1);
        finx = (ancho*(columna)+1)-1;
        iniy = (alto*(fila-1)+1);
        finy = (alto*(fila)+1)-1;
        [num2str(inix) ':' num2str(finx) ' --- '...
            num2str(iniy) ':' num2str(finy)];
        final2(iniy:finy,inix:finx,:) = submatriz;
        imshow(submatriz);
    end
end
figure
imshow(final2);
