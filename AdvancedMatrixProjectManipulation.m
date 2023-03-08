clc, clear, close all

img = imread('leaves.jpg');

halfHeight = floor(size(img, 1) / 2);
halfWidth = floor(size(img, 2) / 2);

% Get the top left corner from the 1st pix to the half height and
% the 1st pixel to the half width, and get all colors
topLeft = img(1:halfHeight, 1:halfWidth, :);

% Get the first pixel to the half height, and the halfwidth + 1 to the end
% and get all colors
topRight = img(1:halfHeight, (halfWidth + 1):end, :);

% Get the halfHeight + 1 to the end and the first pixel to halfWidth
% and get all colors
bottomLeft = img((halfHeight + 1):end, 1:halfWidth, :);

bottomRight = img((halfHeight + 1):end, (halfWidth + 1):end, :);

reconstructedImg = [topLeft, topRight; bottomLeft, bottomRight];
flippedImg = [bottomRight, bottomLeft; topRight, topLeft];

figure
imshow(img)

figure
imshow(reconstructedImg)
figure
imshow(flippedImg)