clc, clear, close all

%% Logical Selection and Extraction of Vectors and Subvectors
% Data to work with
measuredVoltage = [14.2, 14.1, 14.3, 12.6, 14.7, 12.8, 12, 12, 14.2, 14.1, 12.7, 14.4, 12.5, 14.2, 14.1, 12];

% Supply the vector and then in the parameters supply the vector as a input
% and the condition
lessThanFourteen = measuredVoltage(measuredVoltage < 14);
moreThanFourteen = measuredVoltage(measuredVoltage >= 14);
equalToTwelve = measuredVoltage(measuredVoltage == 12);

averageVoltage = sum(measuredVoltage) / length(measuredVoltage);
lessThanAverage = measuredVoltage(measuredVoltage < averageVoltage);

% Replace values conditionally in a vector
% measuredVoltage(measuredVoltage < 14) = 14;  
% measuredVoltage(measuredVoltage < 14) = measuredVoltage(measuredVoltage < 14) + 2;

lowVoltage = measuredVoltage((measuredVoltage >= 12) & (measuredVoltage < 14));

% Remove elements
% provide the vector and the elements with the conditions and then set them
% to []
measuredVoltage((measuredVoltage >= 12) & (measuredVoltage < 14)) = [];

%% Generating Random Numbers with Specific Ranges
% arg(size of vector to generate, how many elements in vector)
% Floating Point Random Number Generation
fpStart = 100;
fpEnd = 200;
fpNumOfNumbers = 16;
randomNumbs = fpStart + (fpEnd - fpStart) * rand(1, fpNumOfNumbers);

% Integer Random Numbers Generation
% {arg(maxNum, sizeOfVector, Elements)
% randi([min max], 1, numOfNumbers), where [min max] is a vector of two
% values the minimum and maximum range
randi(20, 1, 16);

iStart = 50;
iEnd = 70;
iNumbOfNumbers = 16;
iSpecificRange = iEnd - randi(iEnd - iStart, 1, iNumbOfNumbers);

% Random Non-Repeating Random Integers Generation
%{
arg(maxValue, howManyNumbers)
%}
noRepStart = 10;
noRepEnd = 50;
noRepNumOfNums = 21;
noRepeatingSpecificRange = noRepStart + randperm(noRepEnd - noRepStart, noRepNumOfNums)

%% Sorting a Vector
% Vector to work with
someVector = [3, 2, 4, 1, -5, 7, 6, 8];

% sort(vector)
% The sort method will automatically sort a vector (lowest to highest)
% sort(someVector)

% Sort in a Decending Order (highest to lowest)
% sort(someVector, 'descend')

% Sort a portion of a Vector
someVector(1:3) = sort(someVector(1:3));
someVector(6:8) = sort(someVector(6:8));

%% Find the Indexs of Specific Values in a Vector
% Vector to work with
someVector2 = [1, 3, 3, 0, 0, 2, 3, 4, 5, 6, 7, 8];
zeroVector = [0, 0, 0, 0, 0];

% Finding Non-Zero Element Indexs
% find(vector) functions
% find will return the indexs of the values of the vector
% Find all indexes of elements that are not Zero
find(someVector2);
% Find the first 5 indexes of elements are aren't zero
find(someVector2, 5);
% return the indexes of the elements that are 3
find(someVector2 == 3);

% Finding Zero Element Indexes
% Find indexes of all zero elements in the vector
find(~someVector2);
% Find the first Zero index
find(~someVector2, 1);

% Get values behind the indexs
someVector2(find(someVector2)); % not efficient
someVector2(someVector2 ~= 0); % efficient
someVector2(find(someVector2, 5));

% Any Non-Zeroes?
% Will return a boolean value of if there are any non-zero elements in a
% vector
any(someVector2); % true(1)
any(zeroVector); % false(0)
