
.model small
.stack 100h
.data 

.code
    main proc    
        mov dx,0
        
        mov ah,1
        lebel:
            int 21h
            cmp al,0dh
            je exit
            inc dx
            jmp lebel
            
        exit:
            mov ah,2
            int 21h
            mov ah,4

        main endp
    end main