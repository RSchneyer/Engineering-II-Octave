% Reid Schneyer
% Generates 6 rand ints from 1-8 & stores them in an array, then prints the array and the sum

% You dont need to initialize(?) the array with any values, which is nice
array = [];
sum = 0;

% Fillin the array
for i=1:6
  roll = round(rand * 7) + 1;
  array(i) = roll;
endfor

% "Print out all the values stored in the array" - Is just printing out the array ok?
disp(array);

% Sum those numbers up
for x=1:6
  sum += array(x);
endfor

% Display the sum of all 6 numbers
disp(sum);