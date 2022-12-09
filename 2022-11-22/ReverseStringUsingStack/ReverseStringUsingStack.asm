.model small
.stack 100h
.data
.code
    main proc
        mov cx,0
        mov ah,1       ; input Instraction
   
        TakeInputAndPushingIntoStack: 
            int 21h        ; Console connect --> Take input
            cmp al,0dh
            je IfPressEnterThenBreak
            
            push ax                         
            inc cx 
            jmp TakeInputAndPushingIntoStack
        
        IfPressEnterThenBreak:
            cmp cx,0    ;if StackEmpty then exit
            je exit
            
            mov ah,2
            mov dl,0ah
            int 21h
            mov dl,0dh
            int 21h
                  
        pushAndPrintStack:
            pop dx
             
            int 21h
            loop pushAndPrintStack
            
        exit:
            mov ah,4 

        main endp
    end main 