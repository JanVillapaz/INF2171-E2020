; A simple program that outputs the user input
         STRO    in,d        ; Ask user to inut number
         CHARI   caract,d
         STRO    out,d
         CHARO   caract,d
         
         
         STOP

;var
caract:  .BLOCK  1
in:      .ASCII  "Enter character : \x00"
out:     .ASCII  "Character entered is : \x00"
         .END
