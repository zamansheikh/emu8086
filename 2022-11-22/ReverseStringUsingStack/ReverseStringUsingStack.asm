.model small
.stack 100h
.data
.code
    main proc
        mov cx,0
        mov ah,1       ; input Instraction
   
        lebel1: 
            int 21h        ; Console connect --> Take input
            cmp al,0dh
            je lebel2
            
            push ax                         
            inc cx 
            jmp lebel1
        
        lebel2:
            cmp cx,0
            je exit
            
            mov ah,2
            mov dl,0ah
            int 21h
            mov dl,0dh
            int 21h
                  
        lebel3:
            pop dx
             
            int 21h
            loop lebel3
            
        exit:
            mov ah,4 

        main endp
    end main 