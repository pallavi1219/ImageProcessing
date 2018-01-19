clear;clc;
I = imread('origin3.jpg');
J = imread('origin4.jpg');
K = imread('fake3.jpg');


I=imresize(I,[301 720]);
J=imresize(J,[301 720]);
K=imresize(K,[301 720]);

figure(1);
imshow(I);

figure(2);
imshow(J);

figure(3);
imshow(K);

I = rgb2gray(I);
edge1 = edge(I,'canny');


J = rgb2gray(J);
edge2 = edge(J,'canny');

K = rgb2gray(K);
edge3 = edge(K,'canny');

figure(4);
imshow(edge1);

figure(5);
imshow(edge2);

figure(6);
imshow(edge3);
% Comparing two real canny edge images
figure(7);
imshowpair(edge1,edge2,'diff')
% Comparing real and fake canny edge images
figure(8);
imshowpair(edge1,edge3,'diff')