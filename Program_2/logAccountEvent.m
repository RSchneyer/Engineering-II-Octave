function logAccountEvent(eventType, balanceChange, currentBalance)
    newBalance = balanceChange + currentBalance;
    outfile = fopen('xactlog.txt', 'a');
    switch(eventType)
    case 1
        %Deposit
        fprintf(outfile, 'deposit, %.2f, %.2f,\n',  balanceChange, newBalance);
    case 2
        %Withdrawl
        fprintf(outfile, 'withdrawl, %.2f, %.2f,\n', balanceChange, newBalance);
    case 2
        %Interest
        fprintf(outfile, 'interest, %.2f, %.2f,\n', balanceChange, newBalance);
        disp("Try again later");
    case 3
        %Fee
        fprintf(outfile, "fee, %.2f, %.2f,\n", balanceChange, newBalance);
    end

    fclose(outfile);
endfunction