function [difference, hotter] = differenceInTemperatures(temps1, temps2)
 
% Safegarding against errors
 if ((size(temps1, 1) > 1) && (size(temps1, 2) > 1))
     error('temps1 is a matrix, we need a vector')
 elseif ((size(temps2, 1) > 1) && (size(temps2, 2) > 1))
     error('temps1 is a matrix, we need a vector')
 elseif (size(temps1, 2) == 1)
     error('temps1 is a column, We need Row vectors!')
 elseif (size(temps2, 2) == 1)
     error('temps2 is a column, We need Row vectors!')
 elseif(length(temps2) ~= length(temps2))
      error('This Function Requires VEctors of the same size')
  end

   difference = temps1 - temps2;

   hotter = zeros(size(difference));

   for i = 1:length(difference)
        if difference(i) > 0
            hotter(i) = 1;
        elseif difference(i) == 0
            hotter(i) = 2;
        else
%             return
            hotter(i) = 0;  
        end
   end

end