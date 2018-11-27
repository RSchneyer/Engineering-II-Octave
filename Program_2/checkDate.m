function isValid = checkDate(month, day)
    isValid = false;

    if(day>31 || day<1)
        isValid = false;
    else if(month == 4 || month == 6 || month == 9 || month == 11)
        isValid = (day>30)?(false):(true);
    else if(month == 2)
        isValid = (day>28)?(0):(1);
    else
        isValid = 1;
    end
endfunction