clc;
clear all;

% Load an image
origin = imread('origin.jpg');
imshow(origin);
fake = imread('fake.jpg');
imshow(fake);

I1 = imcrop(origin,[75 100 340 40]);
I2 = imcrop(fake,[40 58 250 40]);

% Perform OCR
i1Results = ocr(I1);
i2Results = ocr(I2);

% Display one of the recognized words
word = i1Results.Words{2}
word = i2Results.Words{2}