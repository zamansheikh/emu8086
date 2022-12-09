.model small
.stack 100h
.data
.code
    main proc 
        
       
          MOV AH,2 ;Displays the contents of DL register
          MOV CL,8 ;Counter for the 8-bit number
          MOV BL,7 ;8 bit Hex number to be converted    
          CLC ; clear the carryFlag
 Again:   
          mov dl, 0
          cmp cl, 0
          je exit
          RCL BL, 1    ;Rotate BL through Carry
          ADC DL, 48   ; add 48 to print in Decimal, adc means add with previous carry
          INT 21h        
          dec cl
          jmp Again 
          exit:
        main endp
    end main