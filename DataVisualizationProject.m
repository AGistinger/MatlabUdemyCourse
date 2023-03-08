clc, clear, close all

%% Data Visualization 1 - Data and Subplots

% Initial Data
days = 1:14;

% randomly generate data between 250 and 250, with 1 row and 14 columns, etc
nutrientsForTwoWeeks = [randi([250, 350], size(days)); 	% carbs
	randi([130, 160], size(days)); 						% protein
	randi([50, 80], size(days)); 						% fat
	randi([1800, 2000], size(days))]; 					% calories

% All baselines
carbsBaseLine = linspace(300, 300, length(days));
proteinBaseLine = linspace(145, 145, length(days));
fatBaseLine = linspace(65, 65, length(days));
caloriesBaseLine = linspace(1900, 1900, length(days));

% All Nutrients Subplot
allAx = subplot(2, 3, [1, 4]);
plot(days, nutrientsForTwoWeeks(1, :));
hold on
plot(days, nutrientsForTwoWeeks(2, :))
plot(days, nutrientsForTwoWeeks(3, :))
hold off

allXLabel = xlabel('Days');
allYLabel = ylabel('Intake, [g]');
allTitle = title('2 Weeks Nutrients Intake');
allLegend = legend({'Carbs', 'Protein', 'Fat'});

% Carbs  - Second Subplot
carbsAx = subplot(2, 3, 2)
plot(days, nutrientsForTwoWeeks(1, :));
hold on
plot(days, carbsBaseLine)
hold off

carbsXLabel = xlabel('Days');
carbsYLabel = ylabel('Carbs Intake [g]');
carbsTitle = title('2 Weeks Carbs Intake');
carbsLegend = legend('Carbs');

% Protein - Third Subplot
proteinAx = subplot(2, 3, 3)
plot(days, nutrientsForTwoWeeks(2, :))
hold on
plot(days, proteinBaseLine)
hold off

proteinXLabel = xlabel('Days');
proteinYLabel = ylabel('Protein Intake [g]');
proteinTitle = title('2 Weeks Protein Intake');
proteinLegend = legend('Protein');

% Fat - Fourth Subplot
fatAx = subplot(2, 3, 5)
plot(days, nutrientsForTwoWeeks(3, :))
hold on
plot(days, fatBaseLine)
hold off

fatXLabel = xlabel('Days');
fatYLabel = ylabel('Fat Intake [g]');
fatTitle = title('2 Weeks Fat Intake');
fatLegend = legend('Fat');

% Calories - Fifth Subplot
calAx = subplot(2, 3, 6)
plot(days, nutrientsForTwoWeeks(4, :))
hold on
plot(days, caloriesBaseLine)
hold off

calXLabel = xlabel('Days');
calYLabel = ylabel('Calories Intake [g]');
calTitle = title('2 Weeks Calories Intake');
calLegend = legend('Calories');

% Properties of Subplots
ax = [allAx, carbsAx, proteinAx, fatAx, calAx];
axLines = [carbsAx.Children, proteinAx.Children, fatAx.Children, calAx.Children];
baseLines = axLines(1, :);
dataLines = axLines(2, :);

legendsH = [allLegend, carbsLegend, proteinLegend, fatLegend, calLegend];
lablesAndTitles = [allXLabel, allYLabel, allTitle, carbsXLabel, carbsYLabel, ...
	carbsTitle, proteinXLabel, proteinYLabel, proteinTitle, fatXLabel, ...
	fatYLabel, fatTitle, calXLabel, calYLabel, calTitle];

% Properties for Base Lines
set(baseLines, 'LineWidth', 2)

% Properties for Data Lines
set(dataLines, 'LineWidth', 2)

% Properties for all Axis
set(ax, 'Xlim', [0, 15])
set(ax, 'XGrid', 'on', 'YGrid', 'on')
set(ax, 'XMinorGrid', 'on', 'YMinorGrid', 'on')

% Properties for Lables and Titles
set(lablesAndTitles, 'FontSize', 15)

% Properties for Legends
set(legendsH, 'FontSize', 15)

%% Individual Properties
set(allLegend, 'FontSize', 25)