% Reid Schneyer
% Daily Assignment F
% 9/7/2018
% Flowchart

% Created in Octave

x = input('Please input a number between 3 and 23 (ints only please) : ');
if (mod(x,2) == 0)
  disp('EVEN');
  if (mod(x,4) == 0)
    disp('FORE');
  elseif(x == 14)
    disp('WINNER');
  elseif(x>23)
    disp('TOO LARGE');
  elseif(x<3)
    disp('TOO SMALL');
  endif
elseif(mod(x,2)~=0)
  disp('ODD');
  if(x>23)
    disp('TOO LARGE');
  elseif (x<3)
    disp('TOO SMALL');
  endif
elseif(floor(x) ~= x)
  disp('thats not a number');
else
  disp('YOU SHOULDNT SEE THIS');
endif
  