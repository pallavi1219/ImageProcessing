function [areaopenReal, areaopenFake, areaopenFake2] = removeConnectedComponents(blackStripRealBW, blackStripFakeBW, blackStripFake2BW)
areaopenReal = bwareaopen(blackStripRealBW, 100);
areaopenFake = bwareaopen(blackStripFakeBW, 100);
areaopenFake2 = bwareaopen(blackStripFake2BW, 100);

figure(4);
subplot(1,3,1);
imshow(areaopenReal);
title('Real');
subplot(1,3,2);
imshow(areaopenFake);
title('Fake');
subplot(1,3,3);
imshow(areaopenFake2);
title('Fake #2');
end