% Reid Schneyer
% Program 2 (Matlab)
% 11-25-2018
% Bank Account Simulator

% Setting up constants
DEPOSIT = 1;
WITHDRAWL = 2;
INTEREST = 3;
FEE = 4;

% Let's begin!
disp("Welcome to Reid's Banking Simulator (Octave Edition)");

% Get variables for initial balance and APR
balance = input("Please enter your starting balance: ");
apr = input("Please enter your APR: ");

% Create array of lenght three containing month, day, and year
startDate = getDateArray();
% Create header of xactlog.txt using startDate Array
createFileHeader(startDate);
% Log initial deposit
logAccountEvent(DEPOSIT, balance, 0);

% Setup var for while loop
actionSelection = 1;
% Main part of program, loops as long as the user chooses a menu function 1-4
while(actionSelection>0 && actionSelection<5)
    % Get user's input (1-4, 5 exits the loop)
    actionSelection = getActionSelection();
    % How to include a string and a var in a single disp() statement
    disp(['Selected menu action: ', num2str(actionSelection)]);

    % Switch statement based on user input
    % This is why I defined the constants up at the top, it improves readability
    switch(actionSelection)
    case DEPOSIT
        balance += changeBalance(DEPOSIT, balance);
    case WITHDRAWL
        balance += changeBalance(WITHDRAWL, balance);
    case INTEREST
        % Interest uses a different function b/c it needs the APR
        % You might be able to make a "dummy" apr var, but I didn't bother
        balance += calculateInterest(balance, apr);
    case FEE
        balance += changeBalance(FEE, balance);
    end
    % While loop ends here, if they choose the number 5
end
% Ask user for end date and store it in endDate array
endDate = getDateArray();
% Create the xactlog.txt footer using the endDate array and the final balance
createFileFooter(endDate, balance);