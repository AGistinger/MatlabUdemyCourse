clc, clear, close all

% 1. Generate a random image, that is 500 by 500 pixels, and visualize it
% 2. Extract the pixels that have a gradient over 180 and visualize them
% 3. Increase the whiteness of the gray gradients that are below 150 by 50%
% 4. Read a black and white image and visualize it
% 5. Extract a subimage from the image and visualize it

% Initial Data
% Generating random image and defining colors (0-black) (255-white)
% That is 500x500 pixels
blackAndWhiteImage = randi([0, 255], 500, 500);
chess = imread('chess.jpg');

% Converting Data to Grayscale and extracting colors
% Convert the image to be gray scale instead of black and white
imageToGrayScale = mat2gray(blackAndWhiteImage, [0, 255]);
% Display image
imshow(imageToGrayScale)

% Unable to divide into invalid amount of elements(does not work with
% updated functions)
% mostlyWhiteImage = blackAndWhiteImage(blackAndWhiteImage > 180);
% mostlyWhiteMatrix = reshape(mostlyWhiteImage, floor(sqrt(length(mostlyWhiteImage))), []);
% mostlyWhiteGrayscale = mat2gray(mostlyWhiteMatrix, [0, 255]);
% imshow(mostlyWhiteGrayscale);

% Creates new window
% figure
% imshow()

% Increase Black towards White by 80%
blackToWhiteImage = blackAndWhiteImage;
blackToWhiteImage(blackToWhiteImage(:, :) < 150) = blackToWhiteImage(blackToWhiteImage(:, :) < 150) * 1.8;
% blackToWhiteGrayscale = mat2gray(blackToWhiteImage, [0, 255]);
blackToWhiteGrayscale = uint8(blackToWhiteImage);

% Extracting specific piece from the image
% column 200, row 110, 60 x 60
chessFigureCol = 200;
chessFigureRow = 110;
chessFigureHeight = 60;
chessFigureWidth = 60;

% In order to get the selection you need to take the row to the row + the
% height, and the column to the column + the width
chessFigure = chess(chessFigureRow:(chessFigureRow + chessFigureHeight), chessFigureCol:(chessFigureCol + chessFigureWidth));

% Visualize the Image
% Figure creates new window for each image
figure
imshow(blackToWhiteGrayscale)

figure
imshow(chess)

figure
imshow(chessFigure)