% Reid Schneyer
% 9/14/2018
% Daily Assignment H
% Prints 10 integers between 1 and 12

for i=1:10
  roll = round(rand * 11) +1; % Adding 1 to prevent from rolling 0
  disp(roll);
end