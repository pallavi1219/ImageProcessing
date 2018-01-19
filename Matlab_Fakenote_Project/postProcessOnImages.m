function [BWImageCloseReal,BWImageCloseFake,BWImageCloseFake2] = postProcessOnImages(areaopenReal, areaopenFake, areaopenFake2)
%% //Post-process
se = strel('square', 5);
BWImageCloseReal = imclose(areaopenReal, se);
BWImageCloseFake = imclose(areaopenFake, se);
BWImageCloseFake2 = imclose(areaopenFake2, se);
figure(5);
subplot(1,3,1);
imshow(BWImageCloseReal);
title('Real');
subplot(1,3,2);
imshow(BWImageCloseFake);
title('Fake');
subplot(1,3,3);
imshow(BWImageCloseFake2);
title('Fake #2');
end