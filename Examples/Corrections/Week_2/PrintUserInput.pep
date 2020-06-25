; A program that prints user input and outputs The end

main:    LDA     0,i 
         CHARI   char,d
         LDBYTEA char,d
         ANDA    255,i
         CPA     '\n',i
         BREQ    done

loop:    CHARO   char,d
         BR      main
        

done:    STRO    fini,d    
         STOP


char:    .BLOCK  1
fini:    .ASCII  "\nThe end\x00"
         .END
