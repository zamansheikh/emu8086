include 'emu8086.inc'
.model small
.stack 100h
.data

.code
    main proc
        print 'Input 1st Value in BL:'
        mov ah,1                  
        int 21h
        mov bl,al 
        
        mov ah,2         
        mov dl,0ah        
        int 21h             
        mov dl,0dh
        int 21h 
        
        print 'Input 2nd Value in CL:'
        mov ah,1
        int 21h
        mov cl,al 
        
        mov ah,2        
        mov dl,0ah     
        int 21h             
        mov dl,0dh
        int 21h 
                     
        cmp bl,cl
        
        je Equal
        jge BLIsBigger  
        jmp ClBigger
        
        Equal:
            print 'Value is Equal' 
            jmp exit
        
        BLIsBigger:
           print 'Biggest value is in bl:'
           mov dl,bl
            int 21h
            jmp exit 
        ClBigger:           
        print 'Biggest value is in cl: '
            mov dl,cl
            int 21h    
            
        exit:
            mov ah,4
            int 21h
    
        
        main endp
    
    
    
    end main  