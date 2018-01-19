function [blackStripReal, blackStripFake, blackStripFake2] = convertRgbToGray(blackStripReal, blackStripFake, blackStripFake2)
blackStripReal = rgb2gray(blackStripReal);
blackStripFake = rgb2gray(blackStripFake);
blackStripFake2 = rgb2gray(blackStripFake2);

figure(2);
subplot(1,3,1);
imshow(blackStripReal);
title('Real');
subplot(1,3,2);
imshow(blackStripFake);
title('Fake');
subplot(1,3,3);
imshow(blackStripFake2);
title('Fake #2');   
end