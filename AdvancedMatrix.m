clc, clear, close all

%% Special Matrices in Matlab - Ones and Identify
% Data to work with
someMatrix = [1, 2, 3; 1, 2, 3; 6, 6, 5];

%% Ones Matrix Function
% Creates a square matrix of 5x5 ones
squareOnesV1 = (5);
squreOnesV2 = ones(5, 5);

% Creates a 3 x 5 matrix of ones
threeByFive = ones(3, 5);

% Will create a matrix of the same size as one passed in
onesOfSameSize = ones(size(someMatrix));

% Create a Matrix with another number
onesOfSameSizeV1 = ones(size(someMatrix)) * 8;

% Create a Matrix using a number as a function
desiredNumber = 8;
someNewMatrix = desiredNumber(ones(size(someMatrix)));
someNewMatrixV2 = ones(size(someMatrix));
someMatrixV2 = someNewMatrixV2 * desiredNumber;

%% Eye Matrix Function
% Will create a diagnal matrix with 1's at a diagnal
% All else will be zeros
diagnalMatrixV1 = eye(5);
diagnalMatrixV2 = eye(3, 6);
diagnalMatrixV3 = eye(size(someMatrix));

% Have a diagnal matrix with a different number
diagnalNonOne = eye(size(someMatrix)) * 5;

% Extract diagnal of another matrix
% .* element by element multiplication
newDiagnal = someMatrix .* eye(size(someMatrix));

%% Special Matrices in Matlab, Increase your code speed by 100 times
% Zeros matrix function
% Works similiar in all ways to the ones matrix function
zeros(5);

%% Concatenating Matrices, Vertically and Horizontally
dietTrackWk1 = ...
    [123, 140, 160, 145; % Protein
    250, 240, 280, 366;  % Carbs
    70, 65, 68, 72;      % Fats
    1850, 1900, 2150, 1999]; % Calories

dietTrackWk2 = ...
    [135, 142, 155, 144;  % Protein
    243, 255, 297, 344;   % Carbs
    70, 77, 61, 50;       % Fats
    1850, 1950, 2100, 1750]; % Calories

% Concatenating with free space means you are concatenating with columns
mainDietMatrix = [dietTrackWk1 dietTrackWk2];

% Adding a new column to the matrix
% you must supply the matrix, plus a column vector with semi colons
% if adding a vector row then commas are used
mainDietMatrix = [mainDietMatrix [150; 300; 70; 2000]];

% Adding a new row to the matrix
addFiberIntake = [30, 40, 30, 35, 40, 30, 37, 37, 39];
mainDietMatrix = [mainDietMatrix; addFiberIntake];

% concatenatingHorAndVert = [dietTrackW1, dietTrackWk2; addFiberIntake];

%% How does Matlab Actually Work with Matrices - Sum, Min, Max
% Data to Work with
someMatrix = [1, 2, 4, 5, 6, 3; 1, 3, 4, 5, 2, 3; 6, 7, 8, 2, 6, 3];

% Gives the sum of each individual column and returns a vector of sums
sum(someMatrix);

% To get the sum of the whole matrix you can do the sum of sum
sum(sum(someMatrix)); % 2 dimensions 

% Better way (though no speed difference)
% Give the sum function the matrix with parameters for the column operator(:)
% the column operator turns the whole matrix into one column
sum(someMatrix(:));

% Want to get the sums by rows
sum(someMatrix, 2);

% Want to get the sums by columns
sum(someMatrix, 1);

% Mean function, will give average by columns
% if you pass it a ,2 argument it will average by rows
% if you pass it the (:) argument it will average the whole matrix
mean(someMatrix);
mean(someMatrix, 2);
mean(someMatrix(:));

% Min function, will give min value by columns
% if you pass it a [] empty arguement and a 2 argument it will give min value by rows
% if you pass it the (:) it will give min of whole matrix
min(someMatrix);
min(someMatrix, [], 2);
min(someMatrix(:));

% Max function works the same way as min, but gives the max value
max(someMatrix);
max(someMatrix, [], 2);
max(someMatrix(:));

%% Important Functions for Matrices Part 1
% Data to work with
someMatrix = ...
    [1, 2, 4, 5, 6, 3;
    1, 3, 4, 5, 2, 3;
    6, 7, 8, 2, 6, 5;
    1, 3, 5, 4, 2, 3;
    1, 3, 4, 5, 2, 3];

% Triu function, will give upper triangle of the matrix
upperTriangle = triu(someMatrix);

% Change the diagnal by a parameter (1) one higher, (-1) lower etc
upperShiftedTriangle = triu(someMatrix, 1);

% Tril function, will give lower triangle of matrix
lowerTriangle = tril(someMatrix);

% Change the diagnal by parameter 1, -1 etc
lowerShiftTriangle = tril(someMatrix, 1);

% Get all unique elements in matrix with unique function
% will return column vector with all unique elements in matrix
allUniqueElements = unique(someMatrix);

% How to get all unique rows
allUniqueRows = unique(someMatrix, 'rows');

% Ismember function, checks if a given element exists in matrix or vector
% Takes 2 arguemnets, what are you looking for, where are you looking for
% it, returns a boolean value
isFiveAMember = ismember(5, someMatrix);
isTheVectorAMember = ismember([1, 2, 4, 5, 6, 3], someMatrix, 'rows');

% Shifting function, shift matrix up down left or right
% Takes 2 parameters the matrix and the direction to shift
shiftDown = circshift(someMatrix, 1); % shift down uses a positive number
shiftUp = circshift(someMatrix, -1); % shift up uses a negative number
shiftLeft = circshift(someMatrix, -1, 2); % shift columns to the left by 1 (-1 left, 2 col)
shiftRight = circshift(someMatrix, 1, 2); % shift columns to the right by 1 (1 right, 2 col)

%% Important Functions for Matrices Part 2
% Data to work with
someMatrix = [1, 2, 4, 5, 6; 1, 3, 4, 5, 2; 6, 7, 8, 2, 6; 1, 3, 5, 4, 2; 1, 3, 4, 5, 2];

% Trace gives the sum of a diagonal of a matrix
sumOfDiagonal = trace(someMatrix);
sumOfDiagonalV2 = sum(diag(someMatrix)); % same result but works with any type of matrix

% Rank
rankOfMatrix = rank(someMatrix);

% Determinant
detOfMatrix = det(someMatrix);

% Inverse Matrix
% inverseMatrix = inv(someMatrix);

%% Sorting Matrices
% Data to work with
someMatrix = [1, 2, 4, 5, 6, 3; 1, 3, 4, 5, 2, 3; 6, 7, 8, 2, 6, 5; 1, 3, 5, 4, 2, 3; 1, 3, 4, 5, 2, 3];

% Sort by columns
sortingByColumns = sort(someMatrix);
% Sort by rows
sortingByRows = sort(someMatrix, 2);

sortByColsDesc = sort(someMatrix, 'decend');
sortByRowsDesc = sort(someMatrix, 'decend');

