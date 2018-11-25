% Fahrenheit to Celsius
% Converts a user's input in Fahrenheit to Celsius
% Reid Schneyer 
% 9/3/2018
% Created in Octave

tempF = input('Enter your temperature in Fahrenheit: ');
tempC = (5/9)*(tempF-32);
disp('Your temperature: ');
disp(tempF);
disp('Your temperature in Celsius: ');
disp(tempC);