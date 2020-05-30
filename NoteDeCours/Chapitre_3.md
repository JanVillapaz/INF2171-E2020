# Chapter 3 :grinning:

## 3.1 Numeration system

A numerical value represents a quantity that generally gives the measure of something.
This numerical value can berepresented by different symbols depending on the numeration used. 

Un nombre est ecrit au moyen de chiffres et represente une valeur.
We have to remember the rules that allow calculating the value of a number from it's representation.

The decimal number represented by 101 has the value 1 centaine + 0 dizaine + 1 unite.
La notation positionelle met en jeu les puissances de la base du systeme de numeration utilise, ainsi

```
101_10 = 1 * 10^2 + 0 * 10^1 + 1 * 10^0 for the decimal system
101_2 = 1 * 2^2 + 0 * 2^1 + 1 * 2^0 for the binary system = which gives 5
```

```
Base 10 = 0, 1, 2, 3, 4, 5, 6, 7, 8, 9
Base 2  = 0, 1
Base 16 = 0, 1, 2, 3, 4, 5, 6, 7, 8, 9, A, B, C, D, E, F
Base 8  = 0, 1, 2, 3, 4, 5, 6, 7
```

## 3.1.1 Binary System

To convert a binary number to it's decimal, we have to apply polynomial expansion

```
1101_2   = 2^3 + 2^2 + 2^0 = 13_10
101110_2 = 2^5 + 2^3 + 2^2 + 2^1 = 26_10
111111_2 = 2^5 + 2^4 + 2^3 + 2^2 + 2^1 + 2^0 = 63_10
1100011001010111000_2 = 2^18 + 2^17 + 2^13 + 2^12 + 2^9 +2+7 + 2^5 + 2^4 + 2^3
                      = 262144 + 131072 + 8191 + 4096 + 512 + 128 + 32 + 16 + 8
                      = 406200_10
```

To convert a decimal to binary, we have to proceed with a sequence of division by 2 conserving the remainder of each division.


Ex 1: 

| Number | Base  | Remainder |
|---|---|---|
| 19_10 | 2 | 1 |
| 9 | 2 | 1 |
| 4 | 2 | 0 | 
| 2 | 2 | 0 |
| 1 | 2 | 1 |

Answer : 19_10 = 10011_2

Ex 2: 

| Number | Base  | Remainder |
|---|---|---|
| 139_10 | 2 | 1 |
| 69 | 2 | 1 |
| 34 | 2 | 0 | 
| 17 | 2 | 1 |
| 8 | 2 | 0 |
| 4 | 2 | 0 | 
| 2 | 2 | 0  |
| 1 | 2 | 1 |

Answer : 139_10 = 10001011_2

Ex 3:

| Number | Base  | Remainder |
|---|---|---|
| 52_10 | 2 | 0 |
| 26 | 2 | 0 |
| 13 | 2 | 1 | 
| 6 | 2 | 0 |
| 3 | 2 | 1 |
| 1 | 2 | 1 | 

Answer : 110100_2

## Hexadecimal System

In modern processes, the size of amemory cell is a multiple of 4, we then use the hex system.
We then define an equivalence table binary-hex for 16 hex digits 

| Binary | Hexadecimal |
|---|---|
| 0000 | 0 |
| 0001 | 1 |
| 0010 | 2 |
| 0011 | 3 |
| 0100 | 4 |
| 0101 | 5 |
| 0110 | 6 |
| 0111 | 7 |
| 1000 | 8 |
| 1001 | 9 |
| 1010 | A |
| 1011 | B |
| 1100 | C |
| 1101 | D |
| 1110 | E |
| 1111 | F |

```
Ex: 100010_2          -> 0010 0010            -> 22_16   sur 8 bits
    10101011_2        -> 1010 1011            -> AB_16   sur 8 bits
    100011010010111_2 -> 0100 0110 1001 0111  -> 4697_16 sur 16 bits
```

A 16-bit number est represented by a hex number of 4 digits varying from 0000_16 to FFFF_16, or 00000_10 to 65535_10

To convert hex to binary, we replace each hex to binary equivalence

```
Ex: 
12F_16  -> 0001 0010 1111       -> 100101111_2
2A03_16 -> 0010 1010 0000 0011  -> 10101000000011_2
```

To convert hex to decimal we use expansion

```
27A_16   = 2 * 16^2 + 7 * 16^1 + 10 * 16^0 =
                                           = 2 * 256 + 7 * 16 + 10 
                                           = 634_104
43227_16 = 4 * 16^4 + 3 * 16^3 + 2 * 16^2 + 2 * 16^1 + 7 * 16^0 =
                                                                = 262144 + 12288 + 512 + 32 + 7
                                                                = 274983_10
```

This method is used to convert Bin to Dec where we pass by the Hex representation in the intermediate way

```
10111110_2 = BE_16 = 11 * 16^1 + 14 * 16^0 = 190_10
```

To convert from Dec to Hex we use a similar method to converting Dec to Bin.

We divide a sequence by 16 and conserve the remainder

