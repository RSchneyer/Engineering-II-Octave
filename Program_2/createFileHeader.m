function createFileHeader(dateArray)
    outfile = fopen('xactlog.txt', 'w');
    fprintf(outfile, ", Account Created On,\n");
    fprintf(outfile, "%.0f,%.0f,%.0f,\n", dateArray(1), dateArray(2), dateArray(3));
    fprintf(outfile, "Type, Amount, Balance,\n");
    fclose(outfile);
endfunction