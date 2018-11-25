% Reid Schneyer
% Reads a text file with 14 ints, and calculates the following:
% Mean, Largest Val, Smallest Val, occurances of numbers divisible by 14, and occurances of 42

% Open file
inFile = fopen('fourteen.txt', 'r');

% error handling for missing file
if (inFile == -1)
  disp("Error Opening File");
endif


[y,count] = fscanf(inFile, '%f', Inf);

largest=0
smallest=115;
sumVal = 0;
count14 = 0;
count42 = 0;

% Loop over values from text file
for i=1:14
  sumVal =sumVal + y(i);
  if(y(i)==42)
    count42++;
  endif
  if(y(i)>largest)
    largest = y(i);
  endif
  if(mod(y(i),14)==0)
    count14++;
  endif
  if(y(i)<smallest)
    smallest = y(i);
  endif
endfor

meanVal = sumVal/14;
% Display vals
disp("meanVal:");
disp(meanVal);
disp("Largest:");
disp(largest);
disp("Smallest:");
disp(smallest);
disp("Amount divisible by 14");
disp(count14);
disp("42 occurances");
disp(count42);






% Close file
fclose(inFile);
