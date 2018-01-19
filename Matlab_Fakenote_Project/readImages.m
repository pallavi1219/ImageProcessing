function [Ireal,Ifake,Ifake2] = readImages()
Ireal = imread('real.jpg'); % Real
Ifake = imread('dup2.jpg'); % Fake
Ifake2 = imread('dup1.jpg'); % Fake #2
% //Resize so that we have the same dimensions as the other images
Ifake2 = imresize(Ifake2, [160 320], 'bilinear');
end