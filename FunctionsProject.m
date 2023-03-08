clc, clear, close all

%% Calculate the X and Y Points in Space (animating a plot)
%% Setup
% Initial Conditions
angle = pi / 4;					% Initale Angle, [rad]
x0 = 0;							% Initial X Position [m]
xV = 1:1:10;						% Velocities on the X Axis, [m/s]
xA = 0;							% Initial Acceleration on the X axis [m/s^2]
xAngle = cos(angle);			% The X Component of the Angle
y0 = 0;							% Initial Y Position [m]
yV = 15:1:24;						% Velocities on the Y Axis [m/s]
yA = -9.8;						% Initial Acceleration on the Y Axis [m/s^2]
yAngle = sin(angle);			% The Y Component of the Angle
positionsOfThePoint = 50;		% How many points calculated 

% Preallocation of x, y and t vectors
x = zeros(length(xV), positionsOfThePoint);
y = zeros(size(x));
t = zeros(size(x));

% Finding roots of((a / 2) * t^2) + (v * t^1) + (x * t^0)) for Y
% Roots of Y show us where the motion starts at the ends on the "surface" level
for (i = 1:length(yV))
	nonZeroYRoot = nonZeroRoot(y0, yV(i), yA, yAngle);
	
	% Crating a time vector with linearly spaced values, between the two rotos of
	% the Y equation so we start and end on the "the surface"
	t(i, :) = linspace(0, nonZeroYRoot, positionsOfThePoint);
end

% Plot setup and customizations
xMax = zeros(size(xV));
yMax = zeros(size(xV));
xMin = zeros(size(xV));
yMin = zeros(size(xV));

for (i = 1:length(xV))
	xMax(i) = (xV(i) * t(i, end) * xAngle) * 1.1;
	xMin(i) = (xV(i) * t(i, 1) * xAngle) - xMax(i) * 0.1;
	yMax(i) = (yV(i) * t(i, end / 2) * yAngle + (yA * t(i, end / 2)^2) / 2) * 1.1;
	yMin(i) = (yV(i) * t(i, 1) * yAngle + (yA * t(i, 1)^2) / 2) - yMax(i) * 0.1;
end

setupPlot(xMin, xMax, yMin, yMax)

%% Calculating and Plotting
for (i = 1:length(xV))
    x(i, :) = calculateOneDMotion(x0, xV(i), xA, xAngle, t(i, :));
    y(i, :) = calculateOneDMotion(y0, yV(i), yA, yAngle, t(i, :));
	
	for (j = 1:(positionsOfThePoint - 1))
		plot([x(i, j), x(i, j + 1)], [y(i, j), y(i, j + 1)], 'r')
		pause(0.05)
	end
	
	plot(x(i, :), y(i, :), 'LineWidth', 2)
	
end