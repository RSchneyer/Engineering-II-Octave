d = 39;
while (d>1)
  for j = 5:-4:-2
    disp(d*j);
  endfor
  disp('###');
  d = d/13;
endwhile
disp(d);
