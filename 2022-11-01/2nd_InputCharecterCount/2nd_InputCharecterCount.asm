include 'emu8086.inc'  
.model small
.stack 100h
.data 

.code
    main proc    
        mov dx,0
        
        mov ah,1
        InputAgain:
            int 21h
            cmp al,0dh
            je exit
            inc dx
            jmp InputAgain
            
        exit:  
            mov bx, dx
            mov ah,2  
            mov dl,0ah      
            int 21h
            mov dl,0dh     
            int 21h
             
            print 'Total Char is : '
            mov ah,2
            mov dx, bx
            add dx, 48
            int 21h
            mov ah,4

        main endp
    end main