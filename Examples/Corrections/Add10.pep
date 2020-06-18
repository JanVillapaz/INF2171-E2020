; A program that adds 10 to user input

         STRO    in,d        ; Ask user to inut number
         DECI    nb,d        ; Deci cannot write to register, 
                             ; it then stores it in a variable first
         LDA     nb,d        ; Arithmetic calculations done only in a register.
                             ; Could be A or X
         ADDA    10,i        ; 10 is added to register A ( Contains a preloaded number)
         STA     nb,d        ; Deco has the same behaviour as Deci, we have to store results
                             ; of artihmetic operations in variables
         DECO    nb,d        ; We store the result of the arithmetic operation in RAM directly 
                             ; from the memory (d)
         STOP

;var
nb:      .BLOCK 2
in:      .ASCII  "Enter number : \x00"
out:     .ASCII  "Number entered is : \x00"
         .END
