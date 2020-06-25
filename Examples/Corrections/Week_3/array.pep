; Iterate an array of int
main:    LDX     0,i 

loop:    DECO    arr,x
         CHARO   ' ',I
         ADDX    2,i
         CPX     10,i
         BRLE    loop
         STOP


arr:     .WORD   1
         .WORD   2
         .WORD   5
         .WORD   3
         .WORD   7
         .WORD   8
         .END
