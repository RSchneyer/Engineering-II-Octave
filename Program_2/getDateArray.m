% Returns an array of length 3, [month, day, year], based off user input
function dateArray = getDateArray()
    dateArray = [0,0,0];

    while(dateArray(1)<1 || dateArray(1)>12)
        % Make sure they enter a valid month (1-12)
        dateArray(1) = input("Please enter account start date (MM): ");
    end
    
    if(dateArray(1)==4 || dateArray(1)==6 || dateArray(1)==9 || dateArray(1)==11)
        % If the month only has 30 days, restrict user from entering a larger day
        while(dateArray(2)<1 || dateArray(2)>30)
            dateArray(2) = input("Please enter account start date (DD): ");
        end
    elseif(dateArray(1)==2)
        % If the desired month is Feburary (not checking for leap years)
        while(dateArray(2)<1 || dateArray(2)>28)
            dateArray(2) = input("Please enter account start date (DD): ");
        end 
    else
        % All other months
        while(dateArray(2)<1 || dateArray(2)>31)
            dateArray(2) = input("Please enter account start date (DD): ");
        end
    end

    while(dateArray(3)<1)
        % Prevent user from entering year as 0 
        dateArray(3) = input("Please enter account start date (YYYY): ");
    end
    
endfunction