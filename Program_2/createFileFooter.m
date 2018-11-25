function createFileFooter(dateArray, finalBalance)
    outfile = fopen('xactlog.txt', 'a');
    fprintf(outfile, "-----,-----,-----\n");
    fprintf(outfile, "Closing Balance, ,%.2f,\n", finalBalance);
    fprintf(outfile, ",Account Closed on,,\n");
    fprintf(outfile, "%.0f, %.0f, %.0f,\n", dateArray(1), dateArray(2), dateArray(3));
    fprintf(outfile, ",Thank you for using Reid's Banking Simulator,\n");
    fclose(outfile);
endfunction