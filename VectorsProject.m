clc, clear, close all

%% Initial Data
% Protein intage for 28 days - 4 weeks
proteinIntake = [60, 62, 63, 60, 59, 59, 55, 56, 60, 57, 61, 60, 62, 63, ...
    63, 62, 61, 55, 57, 55, 50, 52, 60, 63, 62, 54, 55, 55];

%% Extracting Weeks into separate vectors
proteinsW1 = [proteinIntake(1:7)];
proteinsW4 = [proteinIntake((end - 6):end)];
% Combining weeks
proteinW1W2 = [proteinsW1, proteinIntake(8:(2 * 7))];
proteinW3W4 = [proteinIntake((2 * 7 + 1):(3 * 7)), proteinsW4];

%% Calculating Percentage Difference
% ((value1 - value2) / value2) * 100 to get how much more or less the first
% value compared to the second value
percentageDif = ((proteinsW1 - proteinsW4) ./ proteinsW4) * 100;
percentageDif2 = ((proteinW1W2 - proteinW3W4) ./ proteinW3W4) * 100