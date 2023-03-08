clc, clear, close all

% Matlab stands for "Matrix Laboratory"

%% Vectors
% Indexs start from 1
myFirstVector = [5, 2, 3, 8, 10];
myFirstVector(3);
myFirstVector(1);

% Colon vector gives control over incrementation over start and end
% To create a vector with parameters you can set start:step:end
% or just start:end 
oneToTenVector = -10:2:8;

% Linspace gives you control over the quantity of points from start to end
% The linspace(start, end, how many numbers) function generates 100 evenly 
% linear spaced numbers in a vector, unless the amount of numbers is specified
oneToOneThou = linspace(1, 1000);

%% Arithmetic with Vectors
firstVector = [1, 2, 3, 4];
secondVector = [1, 2, 3, 4];

%% Addition and Subtraction Two Vectors
addition = firstVector + secondVector;
subraction = firstVector - secondVector;

%% Arithmetic Operations between a Vector and a Number
additionWithNum = firstVector + 5;
subtractionWithNum = firstVector - 5;
multiplicationWithNum = firstVector * 5;
divisionWithNum = firstVector / 5;

%% Protein Intake Example
recommendedProteinIntake = 150;
proteinWeekOne = [100, 120, 175, 134, 143, 176, 150];
difference = proteinWeekOne - recommendedProteinIntake;

% Visualize Vector Data
plot(1:7, zeros(1, 7))
hold on
plot(difference)

%% Element by Element Operations
% Multiply, Div, Power on  Elements in Vector, must add a "." in front of a vector operator
% Both vectors must be of the same size for arithmetic on vectors
multi = firstVector .* secondVector;
division = firstVector ./ secondVector;
powers = firstVector .^ secondVector;

%% Dot and Cross Products Between Two Vectors
% Vectors to work with
vectorOne = [1, 2, 3];
vectorTwo = [3, 5, 4];

%% Dot Product
% projection that one vector has in the direction of the other
dotProductV1 = vectorOne * vectorTwo';
dotProductV2 = dot(vectorOne, vectorTwo);

%% Cross Product
% get third vector that is perpendicular to the two vectors
crossProduct = cross(vectorOne, vectorTwo);

%% Extracting, Modyfying, and selecting Subvectors
CollectedData = [5, 2, 9, 4, 5, 6, 7, 8];
lessCollectedData = [1, 2, 3, 4];

%% Extraction of Subvectors
firstThreeEl = [CollectedData(1), CollectedData(2), CollectedData(3)];
newFirstThreeEl = CollectedData(1:3);
subVectorToEnd = CollectedData(4:end) .* 3;

%% Selection of Subvectors
CollectedData(2:5) = CollectedData(2:5) .* 3;
CollectedData(1:4) = CollectedData(1:4) + lessCollectedData;

%% Concatenating Vectors
vectorA = [2, 4, 5, 6, 1, 2, 3, 4];
vectorB = [3, 4, 5, 2];
vectorC = [8, 5, 6, 5, 3];

% Appending vector
mainVector = [vectorA, vectorB];
mainVector = [mainVector, vectorC];

% Appending vector value
mainVector = [mainVector, 1];

%% Length and Sum of Vectors
vector1 = [2, 4, 5, 6, 1, 2, 3, 4];
smallVector = [3, 4, 5, 2];

% Length() will return the amount of elements in the vector
numOfItems = length(vector1);
length(smallVector);

% Sum() will return the product of all the elements in the vector
sumOfItems = sum(vector1);
sum(smallVector);

% Average
average = sumOfItems / numOfItems;

addingTwoVectors = firstVector(1:length(smallVector)) + smallVector

%% Adding Vectors of different sizes
% Selecting subvectors based on vector length
startIndex = 3;
endIndex = startIndex + length(smallVector) - 1;
vector1(startIndex:endIndex) = vector1(startIndex:endIndex) + smallVector
