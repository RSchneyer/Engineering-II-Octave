% Calculate and return interest, from the formula interest = balance * APR
function interest = calculateInterest(balance, apr)
    interest = balance * apr;

    disp("Calculating Interest...");
    disp(["Balance: ", num2str(balance), "\nAPR: ", num2str(apr)]);
    disp(["Interest earned: ", num2str(interest)]);
    logAccountEvent(2, interest, balance);
endfunction