// This file is part of www.nand2tetris.org
// and the book "The Elements of Computing Systems"
// by Nisan and Schocken, MIT Press.
// File name: projects/04/Fill.asm

// Runs an infinite loop that listens to the keyboard input.
// When a key is pressed (any key), the program blackens the screen,
// i.e. writes "black" in every pixel;
// the screen should remain fully black as long as the key is pressed. 
// When no key is pressed, the program clears the screen, i.e. writes
// "white" in every pixel;
// the screen should remain fully clear as long as no key is pressed.

// Put your code here.

(LOOP)
    @KBD
    D = M
    @BLACK 
    D; JNE
    @WHITE 
    D; JEQ 
    @LOOP 
    0; JMP 
(BLACK)
    @SCREEN 
    D = A
    @i 
    M = D   
    (BLACKLOOP)
        @i 
        D = M 
        @KBD 
        D = D - A 
        @LOOP   
        D; JEQ
        D = -1 
        @i 
        A = M     
        M = D 
        D = 1 
        @i 
        D = D + M 
        M = D   
        @BLACKLOOP 
        0; JMP 
(WHITE) 
    @SCREEN 
    D = A 
    @i 
    M = D 
    (WHITELOOP)
        @i 
        D = M 
        @KBD 
        D = D - A 
        @LOOP 
        D; JEQ 
        D = 0 
        @i 
        A = M 
        M = D 
        D = 1  
        @i 
        D = D + M 
        M = D 
        @WHITELOOP
        0; JMP  
