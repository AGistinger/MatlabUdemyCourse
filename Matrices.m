clc, clear, close all

%% Matrices
% (Multi-dimentional) at least 2 dimentional containers (X, Y)
% Consist of Vector rows or Vector columns
% Columns are X values
% New rows are started by adding a ";" at the end of the row

% Row 1 = Protein, Row 2 = Carbs, Row 3 = Fats, Row 4 = Cal
dietTrackWk1 = ...
    [123, 140, 160, 145;
    250, 260, 280, 366;
    70, 65, 67, 72;
    1850, 1900, 2150, 1999;];

dietTrackWk2 = ...
    [135, 142, 155, 144;
    243, 255, 297, 344;
    70, 77, 61, 50;
    1850, 1950, 2100, 1750;];

% get value Matrix(row, column)
dietTrackWk1(2, 3);

%% Arithmetic Operations with Matrices
totalForTwoWeeks = dietTrackWk1 + dietTrackWk2;
difference = dietTrackWk1 - dietTrackWk2;

increaseByTenPerc = dietTrackWk2 * 1.1;
decreaseByTenPerc = dietTrackWk2 - (dietTrackWk2 * 0.1);

averageForEachDay = totalForTwoWeeks / 2;

% Data to work with
firstMatrix = [1, 2, 3; 3, 4, 5; 4, 3, 5;];
secondMatrix = [1, 2, 3; 1, 2, 4; 4, 3, 4;];

elByElMultiplication = firstMatrix .* secondMatrix;
matrixMultiplication = firstMatrix * secondMatrix;

%% Get the Diagnonal of a Matrix
firstMatrixA = [1, 2, 3, 4; 3, 4, 5, 6; 4, 3, 5, 6;];
secondMatrixA = [1, 2, 3, 4; 1, 2, 4, 2; 4, 3, 4, 3;];
squareMatrix = [1, 4, 5; 3, 4, 2; 4, 4, 4;];
nonSquareMatrix = [1, 4, 5, 6; 5, 3, 4, 5; 6, 5, 3, 4;];
vector = [4, 4, 2, 3, 4, 5];

multiplcationWithTransposing = firstMatrixA * secondMatrixA';

diagOfSqrMatrix = diag(squareMatrix);
diagOfNonSqrMatrix = diag(nonSquareMatrix);

shiftedSqrDiagUp = diag(squareMatrix, 1);
shiftedDwnSqrDiagUp = diag(squareMatrix, -1);

shiftedNonSqrDiagUp = diag(nonSquareMatrix, 1);
shiftedDwnNonSqrDiagUp = diag(nonSquareMatrix, -1);

diagnalMatrix = diag(vector);

%% Size and Dimensions of a Matrix
% Data to work with
matrixA = [1, 2, 3, 4; 3, 4, 5, 6; 4, 3, 5, 6;];
vectorA = [1, 2, 3, 4, 5];

lengthOfMatrix = length(matrixA);
% Size, gives dimentions of vector or matrix
sizeOfVector = size(vectorA); % 1 row by 5 columns
sizeOfMatrix = size(matrixA); % 3 rows by 4 columns
rowSize = size(matrixA, 1); % row size 3
colSize = size(matrixA, 2); % column size 4

elementsInMatrix = size(matrixA, 1) * size(matrixA, 2); % quantity of elements
elementsInMatrixV2 = numel(matrixA); % number of elements 12

%% Extracting and Selecting Submatrices
% Data to work with
dietTrack = ...
    [123, 140, 160, 145; % Proteins
     250, 260, 28, 366; % Carbs
     70, 65, 68, 72; % Fats
     1050, 1900, 2150, 1999;]; % Calories

carbsV1 = dietTrack(2, 1:4); % select a subset of data in a matrix
carbsV2 = dietTrack(2, 1:end); % select elements from start to end
carbsV3 = dietTrack(2, 1:size(dietTrack, 2)); 
carbsV4 = dietTrack(2, :); % Column operator for whole row

allNutrientDay3 = dietTrack(:, 3); % All rows for the 3rd column

proteinCarbsDay23 = dietTrack(1:2, 2:3); % The subset of rows 1 to 2 and columns 2 to 3

dietTrack(:, 2:3) = dietTrack(:, 2:3) * 1.1; % Change the data for a subset of data
dietTrack(:, 2:3) = []; % Remove elements from subset of matrix

%% Logical Selection and Extraction of Matrices and Submatrices
% Data to work with
dietTrack = ...
    [123, 140, 160, 145; % Proteins
     250, 260, 28, 366; % Carbs
     70, 65, 68, 72; % Fats
     1050, 1900, 2150, 1999;]; % Calories

% To compare the values froma  subset of data you need to pass in the
% matrix along with the data you want to compare, and then the subset of
% data that you want to compare.
overTheCaloriesLimit = dietTrack(:, dietTrack(4, :) > 1900); % will retune the whole days that cal is over limit

underTheCaloriesLimit = dietTrack([2, 4], dietTrack(4, :) < 1900);

belowTheCaloriesLimitV2 = find(dietTrack(4, :) < 1900); % shows which element index has a value below limit

% Taking the 1st and 3rd row of the dietTrack matrix
% and then checking if the 2nd row from the 2nd column to the 3rd column
% against the condition
% Good practice to simplify code
colsToExtract = dietTrack(2, :) < 290;
rowsToExtract = [1, 3];

extractedRowData = dietTrack(rowsToExtract, colsToExtract);
extractedSpecificData = extractedRowData(:, 2:3); % get all rows for 2 and 3
