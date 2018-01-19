% //Read in images
clear all;
close all;
% Reding images from project folder
[Ireal,Ifake,Ifake2] = readImages();

%Extract strip from notes from coloum 195 to 215 which has strip.
[blackStripReal, blackStripFake,blackStripFake2] = extractStripsOfImages(Ireal,Ifake,Ifake2);

%Convert RGB to Gray for all images (real,fake1,fake2)
[blackStripReal, blackStripFake,blackStripFake2] = convertRgbToGray(blackStripReal, blackStripFake,blackStripFake2);

%Performing threshold operation intensity 30
[blackStripRealBW, blackStripFakeBW,blackStripFake2BW] = imagesWithIntensity(blackStripReal, blackStripFake,blackStripFake2);

%Remove connected components from images
[areaopenReal, areaopenFake, areaopenFake2] = removeConnectedComponents(blackStripRealBW, blackStripFakeBW, blackStripFake2BW);

%Post processing on images using morphological closing operation using
%'square' strel.
[BWImageCloseReal,BWImageCloseFake,BWImageCloseFake2] = postProcessOnImages(areaopenReal, areaopenFake, areaopenFake2);  


% //Count the total number of objects in this strip
[~,countReal] = bwlabel(BWImageCloseReal);
[~,countFake] = bwlabel(BWImageCloseFake);
[~,countFake2] = bwlabel(BWImageCloseFake2);

%Display Number of objects for real and fake notes
disp(['Number of objects in Real: ' num2str(countReal)]);
disp(['Number of objects in fake: ' num2str(countFake)]);
disp(['Number of objects in fake2: ' num2str(countFake2)]);