clc, clear, close all

% Frequences to be played in hz
frequencies = [100, 500, 1000, 2000];

duration = 0.3; 			% Duration of the Sound
amplitudes = 0.6:0.2:1; 	% Amplitude
fs = 44100; 				% Sampling Rate
T = 1 / fs;					% Sampling Period
t = 0:T:duration;			% Time Vector

signals = zeros(length(frequencies), length(t), length(amplitudes));

plot(0, 0)

for (i = 1:length(frequencies))
	for (j = 1:length(amplitudes))
		% Calculating the sound vector for a given frequency
		signal = amplitudes(j) * cos(2 * pi * frequencies(i) * t);
		
		% Playing the Sound
		sound(signal, fs)
		
% 		if ~((amplitudes(j) == 0.8) || (frequencies(i) == 1000))
% 			continue % nothing after continue will be executed	
% 		end
% 		
% 		if ~(frequencies(i) == 1500)
% 			continue
% 		end
		
		% Plot out the signals
		subplot(length(frequencies), 1, i)
		hold on
		ylim([-1, 1])
		plot(t(1:1000), signal(1:1000))
		
		% Pausing the loop so that we can hear all the frequencies individually
		pause(duration) % waits for the duration
		
		% Save the calculated signal for later use
		signals(i, :, j) = signal;
		
	end
end