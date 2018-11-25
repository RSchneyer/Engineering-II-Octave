% Setting up constants
DEPOSIT = 1;
WITHDRAWL = 2;
INTEREST = 3;
FEE = 4;


startDate = [];

disp("Welcome to Reid's Banking Simulator (Octave Edition)");

balance = input("Please enter your starting balance: ");
apr = input("Please enter your APR: ");

startDate = getDateArray();

createFileHeader(startDate);
logAccountEvent(DEPOSIT, balance, 0);

actionSelection = 1;

while(actionSelection>0 && actionSelection<5)
    actionSelection = getActionSelection();
    disp(['Selected menu action: ', num2str(actionSelection)]);

    switch(actionSelection)
    case DEPOSIT
        balance += changeBalance(DEPOSIT, balance);
    case WITHDRAWL
        balance += changeBalance(WITHDRAWL, balance);
    case INTEREST
        balance += calculateInterest(balance, apr);
    case FEE
        balance += changeBalance(FEE, balance);
    end
end

endDate = getDateArray();
createFileFooter(endDate, balance);


