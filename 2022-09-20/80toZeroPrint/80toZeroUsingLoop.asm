include 'emu8086.inc'
.model small
.stack 100h
.data
.code
    main proc

       mov cx,80

       mov ah,2
       mov dl,cl
       
       top:
       int 21h
       dec dl 
       
       loop top        
        
        main endp   
    end main