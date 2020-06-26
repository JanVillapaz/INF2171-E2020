
Decimal and Hexadecimal of ASCII codes

HEX:
00 - Nul Character -> Delimiter, if you forget x00, then it will continue
0A - Line break -> Enter
20 - Space ' '
30 - First digit '0'
41 - First uppercase alphabet character 'A'
61 - First lowercase alphabet character 'a'

LOAD / LOADBYTE

; LDA / LDX ; Loads to register A or X with 16 bits (2 bytes) / Automatically
; LDBYTEA / LDBYTEX ; Loads 1 byte to register A or X ( Byte to right; 0-7 bits). The byte on the left remains unchanged.

  LEFT      RIGHT
|xxxxxxxx|xxxxxxxx|
15       7        0

A char occupies one byte

caract: .BLOCK 1

