% Display system menu and return their selection, if valid
function selection = getActionSelection()
    selection = 0;
    while(selection<1 || selection>5)
        disp("\n");
        disp("SYSTEM MENU");
        disp("1 - Make a deposit");
        disp("2 - Make a withdrawl");
        disp("3 - Calculate interest");
        disp("4 - Apply a fee");
        disp("5 - Close your account");
        selection = input("Please Enter your choice: ");
    end

endfunction