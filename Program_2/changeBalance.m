% Based on promptType, prompt user to change their balance, check if change is valid, then return balance change & log event
function balanceChange = changeBalance(promptType, currentBalance)
    balanceChange = 0;

    if (promptType == 1)
        %Deposit
        while(balanceChange<=0)
            balanceChange = input("Deposit how much? ");
        end
        logAccountEvent(1, balanceChange, currentBalance);
    elseif(promptType == 2)
        %Withdrawl
        if(currentBalance<=0)
            disp(["\nCan't withdraw, account balance is $", num2str(currentBalance), "\n"]);
        else
            while(balanceChange<=0 || (currentBalance-balanceChange)<0)
                balanceChange = input("Withdraw how much? ");
            end
            balanceChange *= -1;
            logAccountEvent(2, balanceChange, currentBalance);
        end
    elseif(promptType == 4)
        %Fee
        while(balanceChange<=0)
            balanceChange = input("Apply a fee: ");
        end
        balanceChange *= -1;
        logAccountEvent(3, balanceChange, currentBalance);
    end

endfunction