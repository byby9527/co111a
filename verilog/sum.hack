0000000000010000  // 	@i // i refers to some RAM location
1110111111001000  // 	M=1 // i=1
0000000000010001  // 	@sum // sum refers to some RAM location
1110101010001000  // 	M=0 // sum=0
0000000000010000  // (LOOP)	@i
1111110000010000  // 	D=M // D = i
0000000000001010  // 	@10
1110010011010000  // 	D=D-A // D = i - 10
0000000000010010  // 	@END
1110001100000001  // 	D;JGT // If (i-100) > 0 goto END
0000000000010000  // 	@i
1111110000010000  // 	D=M // D = i
0000000000010001  // 	@sum
1111000010001000  // 	M=D+M // sum += i
0000000000010000  // 	@i
1111110111001000  // 	M=M+1 // i++
0000000000000100  // 	@LOOP
1110101010000111  // 	0;JMP // Got LOOP
0000000000010010  // (END)	@END
1110101010000111  // 	0;JMP // Infinite loop
