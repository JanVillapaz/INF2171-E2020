; A program that erifies if character input is a letter or not
  
         CHARI   chr,d
         LDA     0,i
         LDBYTEA chr,d
         CPA     'A',i
         BRLT    not
         CPA     'Z',i
         BRLE    isa
         CPA     'a',i
         BRLT    not
         CPA     'z',i  
isa:     STRO    isalet,d 
done:    STOP
not:     STRO    notlet,d
         BR      done

chr:     .BLOCK 1
isalet:  .ASCII  "It is a letter\x00"
notlet:  .ASCII  "Not a letter\x00"
         .END
