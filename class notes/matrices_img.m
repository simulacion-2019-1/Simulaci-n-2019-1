clc; clear; % 
% comentarios
n=20;
r = ones(n);
k = zeros(n);
t = [r k r k r k];
z = [t;flip(t')'];
z = rand(100,300);

% imwrite(z,'ruido.jpg');
z = imread('casa01.jpg');
z0= imread('..\06 May04\casa02.jpg');
size(z)
% C:\Users\aulasfce1\Documents\MATLAB\Sim\06 May04\casa02.jpg
%  133,93-159 180
z1 = z(93:159,133:170,:);
% subplot(2,1,1)
% imshow(z);
% subplot(2,1,2)
% imshow(z1);
zr = z(:,:,1);
zg = z(:,:,2);
zb = z(:,:,3);
z1r= z;  z1r(:,:,2)=0;  z1r(:,:,3)=0;
z1r= im2bw(z1r,.1);
z2r= diff(z1r);
subplot(2,2,1);     imshow(z);
subplot(2,2,3);     imshow(z2r);
subplot(3,2,2);     imshow(zr);
subplot(3,2,4);     imshow(zg);
subplot(3,2,6);     imshow(zb);

