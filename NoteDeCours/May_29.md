
# Decimal and Hexadecimal of ASCII codes

HEX:
00 - Nul Character -> Delimiter, if you forget x00, then it will continue
0A - Line break -> Enter
20 - Space ' '
30 - First digit '0'
41 - First uppercase alphabet character 'A'
61 - First lowercase alphabet character 'a'

## LOAD / LOADBYTE

; LDA / LDX ; Loads to register A or X with 16 bits (2 bytes) / Automatically
; LDBYTEA / LDBYTEX ; Loads 1 byte to register A or X ( Byte to right; 0-7 bits). The byte on the left remains unchanged.

  LEFT      RIGHT
|xxxxxxxx|xxxxxxxx|
15       7        0

A char occupies one byte

caract: .BLOCK 1

## ANDA / ANDX

We will use a counter that changes line once it reaches 4

Character 03, 07, .. all have similar denominators:
If we examine their binary code, theur last 2 bits ends with 11

03: 0000 0000 0000 0011
07: 0000 0000 0000 0111
0B: 0000 0000 0000 1011
0F: 0000 0000 0000 1111
13: 0000 0000 0001 0011
17: 0000 0000 0001 0111
..  .... .... .... ....
FF: 0000 0000 1111 1111

We have to isolate the 2 last bits.
For example, if we only want D and we're given A B C D
D being '0011'

ANDA  0x0003,i  ; eliminates all bits but conserves the last 2, (0011 = 3 in hex)
CPA   3,i       ; If the last 2 bits contains "11"
