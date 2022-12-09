.model small
.stack 100h
.data
.code
    main proc
         
        mov ah,1

        Input:
            int 21h
            cmp al,0dh
            je exit
            jmp Input 

        exit:
            mov ah,4   
            
        main endp     
    end main