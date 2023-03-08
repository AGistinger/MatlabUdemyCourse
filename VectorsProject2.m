clc, clear, close all

%{
    1. Create a variable with maximum allowed daily protein (ADP for
    short).
    2. Extract proteins that are over that maximum allowed value.
    3. Count the amount of days above the ADP.
    4. Extract the specific days (the days themselves, the days numbers,
    day 3, day 7) on which we were over the ADP, below the ADP, exactly on
    the ADP.
    5. Check which days are more, the days below the ADP or the days above
    the ADP.
%}

%% Initial data
% Randomly Generated Data
proteinIntake = randi([50, 65], 1, 28);
ADP = 60; % Maximum allowed protein

%% Extracting Amoutn and Occurrences of Above, Below, and on the ADP
% Extracting Days above the ADP and counting them
occurrencesOverADP = proteinIntake(proteinIntake > ADP);
daysAmountOverADP = length(occurrencesOverADP);

% Extracting the specific days of above, below and on the ADP
daysOverADP = find(proteinIntake > ADP);
daysUnderADP = find(proteinIntake < ADP);
daysAtADP = find(proteinIntake == ADP);

% Checking which days are more
% lessOrMoreThanADP = length(daysOverADP) < length(daysUnderADP);
lessOrMoreThanADP = length([daysOverADP, daysAtADP]) < length(daysUnderADP);