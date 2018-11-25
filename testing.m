% Reid Schneyer
% Daily Assignment L Part 1
% Generates 14 randome values between 14 to 114 and stores them in the text file "fourteen.txt"

% Making some values
array = []
for i=1:14
  array(i) = round(rand * 100) + 14;
endfor

% Put those values in a file
outFile = fopen('fourteen.txt', 'w');
fprintf(outFile, '%f\n', array); 
disp("Finished!");
% Close file connection
fclose(outFile);