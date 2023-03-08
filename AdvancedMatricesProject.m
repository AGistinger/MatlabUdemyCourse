clc, clear, close all

%% Introduction to RGB Images and 3D-6D+ Matrices

%% Generating random colored image
% 3 2 dimentional matrices
% img = randi([0, 255], 500, 500, 3);
% img = uint8(img);


% For the image for all rows and all columns of the 3rd matrix = 0
% img(:, :, 3) = 0;
% img(:, :, 2) = 0;
img(:, :, [1, 3]) = 0;

readImg = imread('colorful.jpg');
% readImg(:, :, [1, 3]) = 0;

%% Swapping Colors
% Swapping colors by setting temp values and then swapping them
% tempImg = readImg(:, :, : 3);
% readImg(:, :, 3) = readImg(:, :, 1);
% readImg(:, :, 1) = tempImg;

% Better way of swapping colors
% readImg(:, :, [1, 3]) = readImg(:, :, [3, 1]);

%% Combine images
img = randi([0, 255], size(readImg));
readImg = readImg + uint8(img);
readImg(readImg > 255) = 255;

%% Show colored image (colored pixels)
figure
imshow(img)

figure
imshow(readImg)