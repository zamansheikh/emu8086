include 'emu8086.inc'  
.model small
.stack 100h
.data

.code
    main proc
        
        mov bl,85h    ; thats binary = 1000 0101 
        and bl,7Ah    ; thats binary = 0111 1010   
                      ; if we and with opposite value the result
                      ;should be zero/null: 0000 0000 ,then add 48, it display 0
        
         mov ah,2  
         mov dl,0ah      
         int 21h
         mov dl,0dh     
         int 21h  
        print 'The Result is: ' 
        mov ah,2  
        add bl, 48
        mov dl,bl
        int 21h        
        main endp
    end main