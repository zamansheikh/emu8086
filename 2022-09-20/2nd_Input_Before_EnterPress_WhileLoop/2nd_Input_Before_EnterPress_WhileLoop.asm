
.model small
.stack 100h
.data
.code
    main proc
         
        mov ah,1

        level:
            int 21h
            cmp al,0dh
            je exit
            jmp level 

        exit:
            mov ah,4   
            
        main endp     
    end main