include 'emu8086.inc'
.model small
.stack 100h
.data 

.code
    main proc 
        
        mov cx,9
        
        mov dx,'1'
        
        print "Number: "
        
        number:
            mov ah,2
            int 21h
            inc dx
            
            loop number

        main endp
    end main