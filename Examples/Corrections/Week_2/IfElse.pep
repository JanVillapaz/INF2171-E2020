;A program that prints if x is less or eq / x > 10
main:    DECI    x,d
         LDA     x,d
         CPA     "\n",i
         BREQ    done
         CPA     10,i
         BRGT    prgt
         STRO    less,d
         BR      main

prgt:    STRO    great,d
done:    LDA     0,i
         STOP

great:   .ASCII  "> 10\x00"
less:    .ASCII  "<= 10\x00"
x:       .BLOCK 2
         .END
