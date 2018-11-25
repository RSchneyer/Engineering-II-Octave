count = 0;
finished = false;

#finished is a one-way flag var, gets set to true if no errors occcur
while(finished == false)
  #Runs code between this line and the catch line, executes the code in the catch section if an error occurs
  try 
    x = input("Input an INTEGER: ");
    disp("Divisible by:");
    do #JS equivalent is something like for(var i=0; i<x; i++), loops for each int thats less than x
      if(mod(x,count)==0)
        disp(count);
      endif
      count++;
    until(count == x)
    finished = true;
    disp("Finished");
  #Runs if Octave throws an error
  catch err
    disp("Try again");
  end_try_catch
endwhile