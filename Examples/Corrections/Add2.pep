; A simple programthat adds 2 user inputs together

         STRO    in,d        ; Ask user to inut number
         DECI    nb,d        ; Deci cannot write to register, 
                             ; it then stores it in a variable first
         STRO    in2,d
         DECI    res,d
         LDA     res,d       ; Arithmetic calculations done only in a register.
                             ; Could be A or X
         ADDA    nb,d        ; 2nd number is added to register A ( Contains a preloaded number)
         STA     res,d       ; Deco has the same behaviour as Deci, we have to store results
                             ; of artihmetic operations in variables
         DECO    res,d       ; We store the result of the arithmetic operation in RAM directly 
                             ; from the memory (d)
         STOP

;var
nb:      .BLOCK 2
res:     .BLOCK 2
in:      .ASCII  "Enter 1st number : \x00"
in2:     .ASCII  "Enter 2nd number : \x00"
out:     .ASCII  "Number entered is : \x00"
         .END
