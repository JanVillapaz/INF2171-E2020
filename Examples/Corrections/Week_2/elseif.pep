; A program that verifies if input is in bounds, too high or too low

main:    DECI    nb, d
         DECI    min, d
         DECI    max, d
         LDA     nb,d
         CPA     min,d
         BRLT    low 
         CPA     max,d
         BRGT    high 
         STRO    ib,d
         BR      done
         

low:     STRO    tl,d        
done:    STOP
high:    STRO    th,d
         BR      done


         
min:     .BLOCK 2
max:     .BLOCK 2
nb:      .BLOCK 2
ib:      .ASCII  "In bound\x00"
th:      .ASCII  "Too high\x00"
tl:      .ASCII  "Too low\x00"
         .END 
