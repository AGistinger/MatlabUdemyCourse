clc, clear, close all

v1 = 1:10;
v2 = 10:10: 100;
v3 = 100:100:1000;

firstSum = sumFunction(v1);
secondSum = sumFunction(v2);
thirdSum = sumFunction(v3);

averageV1 = average(v1);

newPlot(v1, v2, 'First Vector', 'Second Vector', 'Well Just Two Vectors')

tempsWeekOne = randi([28, 34], 1, 7);
tempsWeekTwo = randi([28, 34], 1, 7);

[diffInTemps, whichIsHotter] = differenceInTemperatures(tempsWeekOne, tempsWeekTwo);

