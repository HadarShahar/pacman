
; multi-segment executable file template.

data segment
    ; add your data here!       
   
     ;---------------------------------------------------------------------------------------------------------          
     ; a string to print WITHOUT $ at the end
     ; the print function calculates how may character to print
     ; by substracting from opening_end memory location the location of opening
     ; the difference is the LENGTH of OPENING - so we know how many characters to print

     openScreen1 db "",10,13	                                                                                  
               db "                 ______  ___  _____ ___  ___  ___   _   _         ",13,10
               db "                 | ___ \/ _ \/  __ \|  \/  | / _ \ | \ | |        ",13,10
               db "                 | |_/ / /_\ \ /  \/| .  . |/ /_\ \|  \| |        ",13,10
               db "                 |  __/|  _  | |    | |\/| ||  _  || . ` |        ",13,10
               db "                 | |   | | | | \__/\| |  | || | | || |\  |        ",13,10
               db "                 \_|   \_| |_/\____/\_|  |_/\_| |_/\_| \_/        ",13,10
               db "                                                                  ",13,10          
               db "                           Choose a level:                        ",13,10
               db "                           (Enter a number)                       ",13,10 
               db "                               1 - Easy                           ",13,10 
               db "                               2 - Medium                         ",13,10 
               db "                               3 - Hard                           ",13,10
               db "                               4 - Impossible                     ",13,10
               db "                                                                  ",13,10 
               db "                                                                  ",13,10 
               db "       ------------->  use the arrow keys to move  <------------- ",13,10            
               db "                            press q to quit                       ",13,10           
               db "                                                                  ",13,10
               db "                                                                  ",13,10  
               db "       _   _           _               _____ _           _        ",13,10        
               db "      | | | |         | |             /  ___| |         | |       ",13,10        
               db "      | |_| | __ _  __| | __ _ _ __   \ `--.| |__   __ _| |__   __ _ _ __ ",13,10 
               db "      |  _  |/ _` |/ _` |/ _` | '__|   `--. \ '_ \ / _` | '_ \ / _` | '__|",13,10
               db "      | | | | (_| | (_| | (_| | |     /\__/ / | | | (_| | | | | (_| | |   ",13,10
               db "      \_| |_/\__,_|\__,_|\__,_|_|     \____/|_| |_|\__,_|_| |_|\__,_|_|   "        
    opening_end db 0 ; stupid-marker so I can caluclate how many characters to print! 
    
    
    
    
    instScreen db "",10,13                                                                                         
               db "                                                                  ",13,10 
               db "                        use the arrow keys to move                ",13,10
               db "                            press q to quit                       ",13,10
               db "                                                                  ",13,10
    inst_end db 0 ; stupid-marker so I can caluclate how many characters to print! 
   
    
    map1 db '',10,13,10,13 
        db "             +---------------------------------------------------+",13,10
        db "             |   . . . . .  . . . @ . . . . @  .  .   . . . . .  |",13,10
        db "             | . +------+ . +------+ . | . +------+ . +------+ . |",13,10
        db "             |   |      |   |      |   |   |      |   |      |   |",13,10
        db "             | . +------+ . +------+ . | . +------+ . +------+ . |",13,10
        db "             | @ . . . . .  . . . . . . . . . . . . . . . . . @  |",13,10
        db "             | . -------- . | @ -------+------- @ | . -------- . |",13,10
        db "             | . . . . . . . . . . . . | . . . . . . . . . . . . |",13,10
        db "             +----------+ . +-------   |   -------+ . +----------+",13,10
        db "                        | . |                     | . |           ",13,10
        db "             ~----------+ . |   +-------------+   | . +----------~",13,10
        db "               . . . . . .      |             |     . . . . . . . ",13,10
        db "             ~----------+ @ |   +-------------+   | @ +----------~",13,10
        db "                        | . |                     | . |           ",13,10
        db "             +----------+ . |   -------+-------   | . +----------+",13,10
        db "             | . . . . . . . @ . . . . | . . . . @ . . . . . . . |",13,10
        db "             | . -------+ . -------- . | . -------  . +------- . |",13,10
        db "             | . . . .  | . .  . . . . @ . . . .  | . | . . . .  |",13,10
        db "             +------- . | . | . --------------- . | . | . -------+",13,10
        db "             |  @ . . . . . |  . . . . . . . . .  | . . . . . @  |",13,10
        db "             | . -----------+------- . | . -------+----------- . |",13,10
        db "             | . . . . . . . . . . . @ | @ . . . . . . . . . . . |",13,10
        db "             +---------------------------------------------------+" 
    map_end db 0 ; stupid-marker so I can caluclate how many characters to print!
                  
    
    gameOver1 db "",10,13,10,13,10,13	        
             db "           _____                           _____                     ",13,10
             db "          |  __ \                          |  _  |                   ",13,10
             db "          | |  \/  __ _  _ __ ___    ___   | | | |__   __  ___  _ __ ",13,10
             db "          | | __  / _` || '_ ` _ \  / _ \  | | | |\ \ / / / _ \| '__|",13,10
             db "          | |_\ \| (_| || | | | | ||  __/  \ \_/ / \ V / |  __/| |   ",13,10
             db "           \____/ \__,_||_| |_| |_| \___|   \___/   \_/   \___||_|   ",13,10  
             db "                                                                     "                                                              
    gameOver_end db 0 ; stupid-marker so I can caluclate how many characters to print!    
    
    
    youWon   db "",10,13,10,13,10,13	        
             db "                __   __                                              ",13,10 
             db "                \ \ / /                                              ",13,10 
             db "                 \ V /___  _   _  __      _____  _ __                ",13,10 
             db "                  \ // _ \| | | | \ \ /\ / / _ \| '_ \               ",13,10 
             db "                  | | (_) | |_| |  \ V  V / (_) | | | |              ",13,10 
             db "                  \_/\___/ \__,_|   \_/\_/ \___/|_| |_|              ",13,10 
             db "                                                                     ",13,10             
             db "              _   _                                          _ _ _   ",13,10
             db "             | | | |                                        | | | |  ",13,10
             db "             | |_| |__   ___    __ _  __ _ _ __ ___   ___   | | | |  ",13,10
             db "             | __| '_ \ / _ \  / _` |/ _` | '_ ` _ \ / _ \  | | | |  ",13,10
             db "             | |_| | | |  __/ | (_| | (_| | | | | | |  __/  |_|_|_|  ",13,10
             db "              \__|_| |_|\___|  \__, |\__,_|_| |_| |_|\___|  (_|_|_)  ",13,10
             db "                                __/ |                                ",13,10
             db "                               |___/                                 ",13,10
             db "                                                                     " 
                                                                                                                  
    youWon_end db 0 ; stupid-marker so I can caluclate how many characters to print!   
     
    
    ;---------------------------------------------------------------------------------------------------------
    
                                                                                                         
                                                                                                         
    clearTest db "",10,13,10,13,10,13,10,13,10,13,10,13,10,13,10,13,10,13,10,13,10,13,10,13,10,13,10,13,10,13,10,13,10,13,10,13,10,13,10,13,10,13,10,13,10,13,10,13,10,13, "$"                  


	
	msgRow    equ 0
    msgColumn equ 0                                                          


    TRUE  equ 1
    FALSE equ 0    
    
    QUIT  equ 'q'   ; key press to quit game

    ; scan code
    UPARROW    equ 048h 
    DOWNARROW  equ 050h
    LEFTARROW  equ 04Bh 
    RIGHTARROW equ 04Dh  
                                                                                                                         
    ; players colors    
    BLACK  equ 0h    ; erase
    RED    equ 0ch     ; player   
    YELLOW equ 0eh  ; player1
    AQUA   equ 0Bh
    PURPLE equ 0Dh
    GREEN  equ 0Ah
    
    SMILEY equ 02h
    HEART  equ 03h
    MONSTER equ 0Fh  
    
    DIRECTION_LEFT  equ -1
    DIRECTION_RIGHT equ  1
    DIRECTION_UP    equ -1
    DIRECTION_DOWN  equ  1
    DIRECTION_STAY  equ  0
    

    
    finalScore db "Your final score:  $" 

    ; Second Player
    ;
    playerShape db SMILEY ;SMILEY
    playerColor db YELLOW ;YELLOW 

    playerRow      db 15    ;15
    playerColumn   db 40    ;39   
    playerColDelta db DIRECTION_LEFT
    playerRowDelta db DIRECTION_STAY

    playerUpKey    equ UPARROW
    playerDownKey  equ DOWNARROW
    playerLeftKey  equ LEFTARROW
    playerRightKey equ RIGHTARROW  
                                     
    monsterShape    db MONSTER  
    monsterColor    dw RED 
                                   
    monster1Row      db 3   ;3
    monster1Column   db 15  ;15 
    monster1ColDelta db 2 
    monster1RowDelta db 0 
    monster1WasEaten  db FALSE
                              
    monster2Row      db 1   ;3
    monster2Column   db 63  ;63
    monster2ColDelta db 0     
    monster2RowDelta db -2    
    monster2WasEaten  db FALSE
        
    monster3Row      db 19  ;19 
    monster3Column   db 28  ;30
    monster3ColDelta db 2     
    monster3RowDelta db 0    
    monster3WasEaten  db FALSE
    
    monster4Row      db 17  ;17
    monster4Column   db 12  ;14  
    monster4ColDelta db 2 
    monster4WasEaten  db FALSE
    
    monster5Row      db 17  ;17
    monster5Column   db 66  ;64  
    monster5ColDelta db -2
    monster5WasEaten  db FALSE
    
    monster6Row      db 9   ;9
    monster6Column   db 12  ;14  
    monster6ColDelta db 2 
    monster6WasEaten  db FALSE
    
    monster7Row      db 9   ;9
    monster7Column   db 66  ;64  
    monster7ColDelta db -2
    monster7WasEaten  db FALSE
    
    monster8Row      db 11  ;11
    monster8Column   db 40  ;39  
    monster8ColDelta db -1
    monster8RowDelta db 0
    monster8WasEaten db FALSE
    monster8Color    dw PURPLE
    
    possibleDir db TRUE
    

    level db 1
                              
                            
    stopping db FALSE ; TRUE when the user pressed key to exit game  
    kbKey db 0 
    
    
    screenChr db 0	   
	score db 0 ;'0'
	scoreRow      db 13 ;12
    scoreColumn   db 39
    
    
    eatingModeCounter db 0 	
    addToScoreCounter db 0 	  
    
    
        
    ten db 10  
    digitOne db "1$"
    moreThan100 db FALSE
       
        
ends

stack segment
    dw   128  dup(0)
ends

code segment
start:
; set segment registers:
    mov ax, data
    mov ds, ax
    mov es, ax

    ; add your code here
        
 startAgain:    
    
    call clearScreen
    
    ; just the function to print the opening screen
    call print_opening       
     
getLevel:
     
     ;wait for any key....    
     mov ah, 1
     int 21h
                 
                 
     ;sub al, 30h                  
     
     ; get the level from the user      
     cmp al, '1'
     jne not1
     mov level, 1
     jmp printMap 
not1:
     cmp al, '2'
     jne not2
     mov level, 2
     jmp printMap
not2:
     cmp al, '3'
     jne not3
     mov level, 3
     jmp printMap
not3:
     cmp al, '4'
     jne getLevel
     mov level, 4
     
printMap: 
    
    
    call clearScreen     

    call print_map             
    
    call MovePlayer
    ;call MoveMonster1 
        
    ; print chararcter
    ; set cursore location
    mov dh, monster1Row         ; row
    mov dl, monster1Column      ; column
    mov bh, 0                    ; page number
    mov ah, 2
    int 10h     
    ; draw smiley - ascii 2 at cursor position                                              
    mov ah, 9
    mov al, [monsterShape]       ; aL = character to display
    mov bx, [monsterColor]       ; bh = Background bl = Foreground
    mov cx, 1                    ; cx = number of times to write character
    int 10h                 
    
               
    call MoveMonster2 
    call MoveMonster3                   
    call MoveMonster4
    call MoveMonster5
    call MoveMonster6
    call MoveMonster7
    call MoveMonster8
                           


    ; wait for any key....    
    mov ah, 1
    int 21h

    ;mov kbKey, al   

PlayOn:


    cmp [monsterColor], RED
    je contPlasyOn1
    
    cmp [addToScoreCounter], 0
    je contPlasyOn3
    cmp [addToScoreCounter], 13
    je contPlasyOn2
    inc [addToScoreCounter] 
    jmp contPlasyOn3
    contPlasyOn2:                    ; delete the +5  
        mov [addToScoreCounter], 0
        call clearAddToScore
    
    contPlasyOn3:
    cmp [eatingModeCounter], 50
    je contPlasyOn
    inc [eatingModeCounter]
    jmp contPlasyOn1 
    contPlasyOn:                     ; turn off the eating monsters mode
        mov [eatingModeCounter], 0
        mov [monsterColor], RED
        mov [monster8Color], PURPLE
        mov monster1WasEaten, FALSE
        mov monster2WasEaten, FALSE
        mov monster3WasEaten, FALSE
        mov monster4WasEaten, FALSE
        mov monster5WasEaten, FALSE
        mov monster6WasEaten, FALSE
        mov monster7WasEaten, FALSE
        mov monster8WasEaten, FALSE    
    contPlasyOn1:
      
    
    
    cmp moreThan100, FALSE
    je nextPlayOn  
    cmp score, 100
    jl nextPlayOn
    ;The score >= 200
    ;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
    call clearScreen 
    call print_youWon
    
    jmp finish2
    nextPlayOn:
    ; set cursore location
    mov dh, [scoreRow]         ; row
    mov dl, [scoreColumn]      ; column
    mov bh, 0                    ; page number
    mov ah, 2
    int 10h     
    
    ;mov dl, [score]
	;int 21h  
	pusha
	mov al, [score]                      
	call print_al                      
    popa
	
	           
     call getKeyPress ; save a key press in kbKey
     call MovePlayer 
       
     call MoveMonster1
     call MoveMonster2 
     call MoveMonster3                   
     call MoveMonster4
     call MoveMonster5
     call MoveMonster6
     call MoveMonster7
     call MoveMonster8
    
    
    push cx
    mov cl, 5
    sub cl, level
    mov ch, 0
    
    levelLoop:
    
     call delay
     ;call delay
     ;call delay
    loop levelLoop                 
    pop cx
    
                      
    cmp stopping, FALSE
    je PlayOn
        

finish:    
           
       
     call clearScreen       
           
    
    ; set cursor position to where we write messages
    mov ah, 2
    mov bh, 0
    mov dh, msgRow
    mov dl, msgColumn
    int 10h  
    
    
    ; text mode
   ;   mov ax, 2h
   ;   int 10h
                    
    call print_gameOver       
    
    
    ; set cursore location
    mov dh, 10       ; row
    mov dl, 25       ; column
    mov bh, 0          ; page number
    mov ah, 2
    int 10h 
    
    lea dx, finalScore
    mov ah, 9
    int 21h 
    
            

    cmp moreThan100, FALSE
    je contFinish
    ; set cursore location
    mov dh, 10       ; row
    mov dl, 44       ; column
    mov bh, 0          ; page number
    mov ah, 2
    int 10h

    lea dx, digitOne
    mov ah, 9
    int 21h        ; output string at ds:dx   
     
    
    contFinish:
    ; set cursore location
    mov dh, 10       ; row
    mov dl, 45       ; column
    mov bh, 0          ; page number
    mov ah, 2
    int 10h
    
    

	pusha
	mov al, [score]                      
	call print_al                      
    popa                      
        
	
	finish2:     
   
    
    ; wait for any key....    
;    mov ah, 1
;    int 21h   
    

    
   mov ax, 4c00h ; exit to operating system.
   int 21h    
ends


;------------------------------------------------------------------------- fuction that prints the opening screen 
proc print_opening   
    pusha
    
    ; mov cursor to top-left of screen
    mov bh, 0 ; page 0
    mov dh, 0 ; row
    mov dl, 0 ; col
    mov ah, 2
    int 10h

    ; now we are ready to print use INT1 10H, function 13
    mov al, 1 ; include attribute (color)
    mov bh, 0
    mov bl, 09h ; Light Blue
    
    ; mov cx, 532 ; length ; do not use a specif number
    ; instead we calculate it
    lea cx, opening_end   
    lea dx, openScreen1
    sub cx, dx               
    
    mov dh, 0 ; row
    mov dl, 0 ; col
    lea bp, openScreen1                           
    
    ; int 10, 13h prints a string WITH colors!
    mov ah, 13h
    int 10h              
             
    ; wait for any ke press
    ;mov ah, 8
    ;int 21h
    
    

    popa
    ret
endp print_opening
;-------------------------------------------------------------------------------------------------------------



;------------------------------------------------------------------------- fuction that prints the map
proc print_map  
    pusha
    
    ; mov cursor to top-left of screen
    mov bh, 0 ; page 0
    mov dh, 0 ; row
    mov dl, 0 ; col
    mov ah, 2
    int 10h

    ; now we are ready to print use INT1 10H, function 13
    mov al, 1 ; include attribute (color)
    mov bh, 0
    mov bl, 09h ; Light Blue
    
    ; mov cx, 532 ; length ; do not use a specif number
    ; instead we calculate it
    lea cx, map_end   
    lea dx, map1
    sub cx, dx               
    
    mov dh, 0 ; row
    mov dl, 0 ; col
    lea bp, map1                           
    
    ; int 10, 13h prints a string WITH colors!
    mov ah, 13h
    int 10h              
             
    ; wait for any ke press
    ;mov ah, 8
    ;int 21h

    popa
    ret
endp print_map
;-------------------------------------------------------------------------------------------------------------


;------------------------------------------------------------------------- fuction that prints the game over screen
proc print_gameOver 
    pusha
    
    ; mov cursor to top-left of screen
    mov bh, 0 ; page 0
    mov dh, 0 ; row
    mov dl, 0 ; col
    mov ah, 2
    int 10h

    ; now we are ready to print use INT1 10H, function 13
    mov al, 1 ; include attribute (color)
    mov bh, 0
    mov bl, 0ch ; Light Red
    
    ; mov cx, 532 ; length ; do not use a specif number
    ; instead we calculate it
    lea cx, gameOver_end   
    lea dx, gameOver1
    sub cx, dx               
    
    mov dh, 0 ; row
    mov dl, 0 ; col
    lea bp, gameOver1                           
    
    ; int 10, 13h prints a string WITH colors!
    mov ah, 13h
    int 10h              
             
    ; wait for any ke press
    ;mov ah, 8
    ;int 21h

    popa
    ret
endp print_gameOver
;-------------------------------------------------------------------------------------------------------------                
                
 
 
 
;------------------------------------------------------------------------- fuction that prints the game over screen
proc print_youWon 
    pusha
    
    ; mov cursor to top-left of screen
    mov bh, 0 ; page 0
    mov dh, 0 ; row
    mov dl, 0 ; col
    mov ah, 2
    int 10h

    ; now we are ready to print use INT1 10H, function 13
    mov al, 1 ; include attribute (color)
    mov bh, 0
    mov bl, 0Eh ; Yellow
    
    ; mov cx, 532 ; length ; do not use a specif number
    ; instead we calculate it
    lea cx, youWon_end   
    lea dx, youWon
    sub cx, dx               
    
    mov dh, 0 ; row
    mov dl, 0 ; col
    lea bp, youWon                           
    
    ; int 10, 13h prints a string WITH colors!
    mov ah, 13h
    int 10h              
             
    ; wait for any ke press
    ;mov ah, 8
    ;int 21h

    popa
    ret
endp print_youWon
;-------------------------------------------------------------------------------------------------------------                
                
 
 
 
;------------------------------------------------------------------------- fuction that prints the value of al
proc print_al
    ; print the result stored in AL
    cmp al, 100
    jl lessThan100
    mov moreThan100, TRUE
    sub al, 100
    sub [score], 100
      
    push ax
    ; print chararcter
    ; set cursore location
    mov dh, 13         ; row
    mov dl, 38      ; column
    mov bh, 0                    ; page number
    mov ah, 2
    int 10h     
    lea dx, digitOne
    mov ah, 9
    int 21h        ; output string at ds:dx     
    pop ax
    
    
    lessThan100:
    mov ah, 0
    div [ten]
    add ax, '00' 
    mov dx, ax
    mov ah, 2h
    int 21h
    mov dl, dh
    int 21h
    
    
    ret
endp print_al
;-------------------------------------------------------------------------------------------------------------    



;------------------------------------------------------------------------- fuction that clears the screen
proc clearScreen 
    MOV AX,0600H ;06 TO SCROLL & 00 FOR FULLJ SCREEN      ;0600H
    MOV BH,09H       
    MOV CX,0000H ;STARTING COORDINATES
    MOV DX,184FH ;ENDING COORDINATES
    INT 10H ;FOR VIDEO DISPLAY?
;    mov dx, offset clearTest
;	mov ah, 9h
;	int 21h
    

    ret
endp clearScreen   
;-------------------------------------------------------------------------------------------------------------    
     
 
                      
;-------------------------------------------------------------------------------------------------------------                      
; reads a character from the screen on cursor location
proc readScreenChr
    pusha
    mov bh, 0h ; Page=1
    mov ah, 08h ; Read character function
    int 10h ;return the character to al
    mov [screenChr], al
    popa
    ret
endp readScreenChr 
;-------------------------------------------------------------------------------------------------------------   
       
       
;--------------------------------------------------------- function clears the +5 after eating a monster         
proc clearAddToScore 
   ; set cursore location                                                     
    mov dh, 13      ; row                                        
    mov dl, 42      ; column                                     
    mov bh, 0                    ; page number                               
    mov ah, 2
    int 10h
    ; draw smiley - ascii 2 at cursor position                                              
    mov ah, 9
    mov al, 0          ;+  ; aL = character to display
    mov bx, YELLOW       ; bh = Background bl = Foreground
    mov cx, 1                    ; cx = number of times to write character
    int 10h  
    
   ; set cursore location                                                     
    mov dh, 13      ; row                                        
    mov dl, 43      ; column                                     
    mov bh, 0                    ; page number                               
    mov ah, 2
    int 10h
    ; draw smiley - ascii 2 at cursor position                                              
    mov ah, 9
    mov al, 0          ;5  ; aL = character to display
    mov bx, YELLOW       ; bh = Background bl = Foreground
    mov cx, 1                    ; cx = number of times to write character
    int 10h      
    
    ret
endp clearAddToScore
;------------------------------------------------------------------------------------------------------------- 



;--------------------------------------------------------- functions shows the +5 after eating a monster    
proc addToScore 
   ; set cursore location                                                     
    mov dh, 13      ; row                                        
    mov dl, 42      ; column                                     
    mov bh, 0                    ; page number                               
    mov ah, 2
    int 10h
    ; draw smiley - ascii 2 at cursor position                                              
    mov ah, 9
    mov al, 2Bh          ;+  ; aL = character to display
    mov bx, YELLOW       ; bh = Background bl = Foreground
    mov cx, 1                    ; cx = number of times to write character
    int 10h  
    
   ; set cursore location                                                     
    mov dh, 13      ; row                                        
    mov dl, 43      ; column                                     
    mov bh, 0                    ; page number                               
    mov ah, 2
    int 10h
    ; draw smiley - ascii 2 at cursor position                                              
    mov ah, 9
    mov al, 35h          ;5  ; aL = character to display
    mov bx, YELLOW       ; bh = Background bl = Foreground
    mov cx, 1                    ; cx = number of times to write character
    int 10h      
    
    
    add score, 5 
    mov [addToScoreCounter], 1
    
    ret
endp addToScore
;-------------------------------------------------------------------------------------------------------------     
    

  
    
    
;------------------------------------------------------------------------------- function that moves monster 1     
;  15         26    
;2 *          *    
;   
;    
;6 *          * 

    
proc MoveMonster1
    ;pusha                                                            
    cmp monster1WasEaten, FALSE
    jne endMoveMonster1
                                                                             
                                                                        
    ; set cursore location                                                     
    mov dh, monster1Row         ; row                                        
    mov dl, monster1Column      ; column                                     
    mov bh, 0                    ; page number                               
    mov ah, 2
    int 10h
    ; draw smiley - ascii 2 at cursor position                                              
    mov ah, 9
    mov al, 0    ;2Eh   ; aL = character to display
    mov bx, [monsterColor]       ; bh = Background bl = Foreground
    mov cx, 1                    ; cx = number of times to write character
    int 10h 
    
    ;mov dl, '.'
	;int 21h  

    
    cmp [monster1Column], 26
    jne next
    cmp [monster1Row], 7 ;6
    jne next1
     mov [monster1ColDelta], -2  ;-1
     mov [monster1RowDelta], 0
     jmp keepGoing
    next1:
     mov [monster1ColDelta], 0   
     mov [monster1RowDelta], 2   ;1
     jmp keepGoing
    next:
     cmp [monster1Column], 15
     jne next3
     cmp [monster1Row], 3 ;2
     jne next2
       
     inc [monster1Column]                            
     mov [monster1ColDelta], 2   ;1
     mov [monster1RowDelta], 0
     jmp keepGoing
   next3: 
     cmp [monster1Column], 16
     jne keepGoing
     dec [monster1Column] 

   next2: 
     mov [monster1ColDelta], 0
     mov [monster1RowDelta], -2  ;-1

                  
    
    keepGoing:

    mov ah, monster1ColDelta 
    add [monster1Column], ah
    
    mov ah, monster1RowDelta 
    add [monster1Row], ah
    
    ; set cursore location
    mov dh, monster1Row         ; row
    mov dl, monster1Column      ; column
    mov bh, 0                    ; page number
    mov ah, 2
    int 10h
    
    
    cmp [monsterColor], RED
    je conti1 
    call readScreenChr
    mov ah, [screenChr]
    cmp ah, [playerShape] 
    jne conti1
    call addToScore
    mov monster1WasEaten, TRUE
    mov monster1Row      , 3 
    mov monster1Column   , 15  
    mov monster1ColDelta , 2 
    mov monster1RowDelta , 0
    jmp endMoveMonster1 
    conti1:
    
             
    ; draw smiley - ascii 2 at cursor position                                              
    mov ah, 9
    mov al, [monsterShape]       ; aL = character to display
    mov bx, [monsterColor]       ; bh = Background bl = Foreground
    mov cx, 1                    ; cx = number of times to write character
    int 10h 
    
    endMoveMonster1:
   ; popa
      
    ret
endp MoveMonster1    
;-------------------------------------------------------------------------------------------------------------     
    
    
    

;------------------------------------------------------------------------------- function that moves monster 2      
;  52         63    
;2 *          *    
;   
;    
;6 *          * 
  
proc MoveMonster2
    
    ;pusha                                                            
    cmp monster2WasEaten, FALSE
    jne endMoveMonster2
                            
                             
    ; set cursore location
    mov dh, monster2Row         ; row
    mov dl, monster2Column      ; column
    mov bh, 0                    ; page number
    mov ah, 2
    int 10h
    ; draw smiley - ascii 2 at cursor position                                              
    mov ah, 9
    mov al, 0    ;2Eh   ; aL = character to display
    mov bx, [monsterColor]       ; bh = Background bl = Foreground
    mov cx, 1                    ; cx = number of times to write character
    int 10h 
    
    ;mov dl, '.'
	;int 21h  

    
    cmp [monster2Column], 63
    jne next4
    cmp [monster2Row], 7 ;6
    jne next5
     mov [monster2ColDelta], -2  ;-1
     mov [monster2RowDelta], 0
     jmp keepGoing4
    next5:
     mov [monster2ColDelta], 0   
     mov [monster2RowDelta], 2   ;1
     jmp keepGoing4
    next4:
     cmp [monster2Column], 52
     jne next7
     cmp [monster2Row], 3 ;2
     jne next6
       
     inc [monster2Column]                            
     mov [monster2ColDelta], 2   ;1
     mov [monster2RowDelta], 0
     jmp keepGoing4
   next7: 
     cmp [monster2Column], 53
     jne keepGoing4
     dec [monster2Column] 

   next6: 
     mov [monster2ColDelta], 0
     mov [monster2RowDelta], -2  ;-1

    
    keepGoing4:

    mov ah, monster2ColDelta 
    add [monster2Column], ah
    
    mov ah, monster2RowDelta 
    add [monster2Row], ah

    ; set cursore location      
    mov dh, monster2Row         ; row
    mov dl, monster2Column      ; column
    mov bh, 0                    ; page number
    mov ah, 2
    int 10h 
    
   
    cmp [monsterColor], RED
    je conti2 
    call readScreenChr
    mov ah, [screenChr]
    cmp ah, [playerShape] 
    jne conti2
    call addToScore
    mov monster2WasEaten, TRUE
    mov monster2Row      , 3 
    mov monster2Column   , 63  
    mov monster2ColDelta , 0 
    mov monster2RowDelta , -2
    jmp endMoveMonster2 
    conti2:
    
    
            
    ; draw smiley - ascii 2 at cursor position                                              
    mov ah, 9
    mov al, [monsterShape]       ; aL = character to display
    mov bx, [monsterColor]       ; bh = Background bl = Foreground
    mov cx, 1                    ; cx = number of times to write character
    int 10h 

    endMoveMonster2:
   ; popa
    
    ret
endp MoveMonster2    
;-------------------------------------------------------------------------------------------------------------       
    
        
        

        
;------------------------------------------------------------------------------- function that moves monster 3
           
;   30         48    
;18 *          *    
;   
;    
;20 *          *        
         
proc MoveMonster3
    
    ;pusha                                                            
    cmp monster3WasEaten, FALSE
    jne endMoveMonster3
                            
                             
    ; set cursore location
    mov dh, monster3Row         ; row
    mov dl, monster3Column      ; column
    mov bh, 0                    ; page number
    mov ah, 2
    int 10h
    ; draw smiley - ascii 2 at cursor position                                              
    mov ah, 9
    mov al, 0    ;2Eh   ; aL = character to display
    mov bx, [monsterColor]       ; bh = Background bl = Foreground
    mov cx, 1                    ; cx = number of times to write character
    int 10h 
    
    ;mov dl, '.'
	;int 21h  

    cmp [monster3Column], 48
    jne next8
    cmp [monster3Row], 21  ;20
    jne next9
     mov [monster3ColDelta], -2  ;-1
     mov [monster3RowDelta], 0
     jmp keepGoing8
    next9:
     mov [monster3ColDelta], 0   
     mov [monster3RowDelta], 2   ;1
     jmp keepGoing8
    next8:
     cmp [monster3Column], 30
     jne next11    
     cmp [monster3Row], 19  ;18
     jne next10
       
     ;inc [monster3Column]                            
     mov [monster3ColDelta], 2   ;1
     mov [monster3RowDelta], 0
     jmp keepGoing8
   next11: 
     cmp [monster3Column], 31
     jne keepGoing8
     ;dec [monster3Column] 

   next10: 
     mov [monster3ColDelta], 0
     mov [monster3RowDelta], -2  ;-1
      
      
    
    keepGoing8:

    mov ah, monster3ColDelta 
    add [monster3Column], ah
    
    mov ah, monster3RowDelta 
    add [monster3Row], ah

    ; set cursore location      
    mov dh, monster3Row         ; row
    mov dl, monster3Column      ; column
    mov bh, 0                    ; page number
    mov ah, 2
    int 10h 
    
    cmp [monsterColor], RED
    je conti3 
    call readScreenChr
    mov ah, [screenChr]
    cmp ah, [playerShape] 
    jne conti3
    call addToScore
    mov monster3WasEaten, TRUE
    mov monster3Row      , 19 
    mov monster3Column   , 30  
    mov monster3ColDelta , 2 
    mov monster3RowDelta , 0
    jmp endMoveMonster3 
    conti3:
               
               
    ; draw smiley - ascii 2 at cursor position                                              
    mov ah, 9
    mov al, [monsterShape]       ; aL = character to display
    mov bx, [monsterColor]       ; bh = Background bl = Foreground
    mov cx, 1                    ; cx = number of times to write character
    int 10h 


    
     endMoveMonster3:
   ; popa
    
    ret
endp MoveMonster3    
;-------------------------------------------------------------------------------------------------------------               
        
        
        

;------------------------------------------------------------------------------- function that moves monster 4
;14 - 38         
proc MoveMonster4
    
    ;pusha                                                            
    cmp monster4WasEaten, FALSE
    jne endMoveMonster4
                             
    ; set cursore location
    mov dh, monster4Row         ; row
    mov dl, monster4Column      ; column
    mov bh, 0                    ; page number
    mov ah, 2
    int 10h
    ; draw smiley - ascii 2 at cursor position                                              
    mov ah, 9
    mov al, 0    ;2Eh   ; aL = character to display
    mov bx, [monsterColor]       ; bh = Background bl = Foreground
    mov cx, 1                    ; cx = number of times to write character
    int 10h 
    
    ;mov dl, '.'
	;int 21h  
    
        
    cmp monster4Column, 38
    jne next12
    mov monster4ColDelta, -2  
    jmp keepGoing9
    next12: 
    cmp monster4Column, 14
    jne keepGoing9
    mov monster4ColDelta, 2 

        
    keepGoing9:

    mov ah, monster4ColDelta 
    add monster4Column, ah
    

          
    mov dh, monster4Row         ; row
    mov dl, monster4Column      ; column
    mov bh, 0                    ; page number
    mov ah, 2
    int 10h 
    
    
    cmp [monsterColor], RED
    je conti4 
    call readScreenChr
    mov ah, [screenChr]
    cmp ah, [playerShape] 
    jne conti4
    call addToScore
    mov monster4WasEaten, TRUE
    mov monster4Row      , 17 
    mov monster4Column   , 14  
    mov monster4ColDelta , 2 
    jmp endMoveMonster4 
    conti4:
    
            
    ; draw smiley - ascii 2 at cursor position                                              
    mov ah, 9
    mov al, [monsterShape]       ; aL = character to display
    mov bx, [monsterColor]       ; bh = Background bl = Foreground
    mov cx, 1                    ; cx = number of times to write character
    int 10h 
         ; print chararcter
    ; set cursore location
    
     endMoveMonster4:
   ; popa
   
    ret
endp MoveMonster4      
;-------------------------------------------------------------------------------------------------------------    
    



;------------------------------------------------------------------------------- function that moves monster 5
;40 - 64         
proc MoveMonster5
    
    ;pusha                                                            
    cmp monster5WasEaten, FALSE
    jne endMoveMonster5
     
    ; set cursore location
    mov dh, monster5Row         ; row
    mov dl, monster5Column      ; column
    mov bh, 0                    ; page number
    mov ah, 2
    int 10h
    ; draw smiley - ascii 2 at cursor position                                              
    mov ah, 9
    mov al, 0    ;2Eh   ; aL = character to display
    mov bx, [monsterColor]       ; bh = Background bl = Foreground
    mov cx, 1                    ; cx = number of times to write character
    int 10h 
    
    ;mov dl, '.'
	;int 21h  
    
        
    cmp monster5Column, 64
    jne next13
    mov monster5ColDelta, -2  
    jmp keepGoing10
    next13: 
    cmp monster5Column, 40
    jne keepGoing10
    mov monster5ColDelta, 2 

        
    keepGoing10:

    mov ah, monster5ColDelta 
    add monster5Column, ah
    

          
    mov dh, monster5Row         ; row
    mov dl, monster5Column      ; column
    mov bh, 0                    ; page number
    mov ah, 2
    int 10h                         
    
    cmp [monsterColor], RED
    je conti5 
    call readScreenChr
    mov ah, [screenChr]
    cmp ah, [playerShape] 
    jne conti5
    call addToScore
    mov monster5WasEaten, TRUE
    mov monster5Row      , 17 
    mov monster5Column   , 64  
    mov monster5ColDelta , -2 
    jmp endMoveMonster5 
    conti5:           
    
    
    ; draw smiley - ascii 2 at cursor position                                              
    mov ah, 9
    mov al, [monsterShape]       ; aL = character to display
    mov bx, [monsterColor]       ; bh = Background bl = Foreground
    mov cx, 1                    ; cx = number of times to write character
    int 10h 
         ; print chararcter
    ; set cursore location  
    
     endMoveMonster5:
   ; popa
    ret
endp MoveMonster5      
;-------------------------------------------------------------------------------------------------------------    
        
    
    


;------------------------------------------------------------------------------- function that moves monster 6
;14 - 38         
proc MoveMonster6
         
    ;pusha                                                            
    cmp monster6WasEaten, FALSE
    jne endMoveMonster6
          
    ; set cursore location
    mov dh, monster6Row         ; row
    mov dl, monster6Column      ; column
    mov bh, 0                    ; page number
    mov ah, 2
    int 10h
    ; draw smiley - ascii 2 at cursor position                                              
    mov ah, 9
    mov al, 0    ;2Eh   ; aL = character to display
    mov bx, [monsterColor]       ; bh = Background bl = Foreground
    mov cx, 1                    ; cx = number of times to write character
    int 10h 
    
    ;mov dl, '.'
	;int 21h  
    
        
    cmp monster6Column, 38
    jne next14
    mov monster6ColDelta, -2  
    jmp keepGoing11
    next14: 
    cmp monster6Column, 14
    jne keepGoing11
    mov monster6ColDelta, 2 

        
    keepGoing11:

    mov ah, monster6ColDelta 
    add monster6Column, ah
    

          
    mov dh, monster6Row         ; row
    mov dl, monster6Column      ; column
    mov bh, 0                    ; page number
    mov ah, 2
    int 10h  
    
    
    cmp [monsterColor], RED
    je conti6 
    call readScreenChr
    mov ah, [screenChr]
    cmp ah, [playerShape] 
    jne conti6
    call addToScore
    mov monster6WasEaten, TRUE
    mov monster6Row      , 19 
    mov monster6Column   , 14  
    mov monster6ColDelta , 2 
    jmp endMoveMonster6 
    conti6:
           
    ; draw smiley - ascii 2 at cursor position                                              
    mov ah, 9
    mov al, [monsterShape]       ; aL = character to display
    mov bx, [monsterColor]       ; bh = Background bl = Foreground
    mov cx, 1                    ; cx = number of times to write character
    int 10h 
         ; print chararcter
    ; set cursore location 
    
     endMoveMonster6:
   ; popa
    ret
endp MoveMonster6      
;-------------------------------------------------------------------------------------------------------------    
    



;------------------------------------------------------------------------------- function that moves monster 7
;40 - 64         
proc MoveMonster7
    
   ;pusha                                                            
    cmp monster7WasEaten, FALSE
    jne endMoveMonster7
     
    ; set cursore location
    mov dh, monster7Row         ; row
    mov dl, monster7Column      ; column
    mov bh, 0                    ; page number
    mov ah, 2
    int 10h
    ; draw smiley - ascii 2 at cursor position                                              
    mov ah, 9
    mov al, 0    ;2Eh   ; aL = character to display
    mov bx, [monsterColor]       ; bh = Background bl = Foreground
    mov cx, 1                    ; cx = number of times to write character
    int 10h 
    
    ;mov dl, '.'
	;int 21h  
    
        
    cmp monster7Column, 64
    jne next15
    mov monster7ColDelta, -2  
    jmp keepGoing12
    next15: 
    cmp monster7Column, 40
    jne keepGoing12
    mov monster7ColDelta, 2 

        
    keepGoing12:

    mov ah, monster7ColDelta 
    add monster7Column, ah
    

          
    mov dh, monster7Row         ; row
    mov dl, monster7Column      ; column
    mov bh, 0                    ; page number
    mov ah, 2
    int 10h 
    
    cmp [monsterColor], RED
    je conti7 
    call readScreenChr
    mov ah, [screenChr]
    cmp ah, [playerShape] 
    jne conti7
    call addToScore
    mov monster7WasEaten, TRUE
    mov monster7Row      , 9 
    mov monster7Column   , 64  
    mov monster7ColDelta , -2 
    jmp endMoveMonster7 
    conti7:
    
            
    ; draw smiley - ascii 2 at cursor position                                              
    mov ah, 9
    mov al, [monsterShape]       ; aL = character to display
    mov bx, [monsterColor]       ; bh = Background bl = Foreground
    mov cx, 1                    ; cx = number of times to write character
    int 10h 
         ; print chararcter
    ; set cursore location  
    
    
     endMoveMonster7:
   ; popa           
   
    ret
endp MoveMonster7      
;-------------------------------------------------------------------------------------------------------------    





;------------------------------------------------------------------------------- function that moves monster 8
proc MoveMonster8
    
   ;pusha                                                            
    cmp monster8WasEaten, FALSE
    jne endMoveMonster8
     
    ; set cursore location
    mov dh, monster8Row         ; row
    mov dl, monster8Column      ; column
    mov bh, 0                    ; page number
    mov ah, 2
    int 10h
    ; draw smiley - ascii 2 at cursor position                                              
    mov ah, 9
    mov al, 0    ;2Eh   ; aL = character to display
    mov bx, [monster8Color]       ; bh = Background bl = Foreground
    mov cx, 1                    ; cx = number of times to write character
    int 10h 
    
    ;mov dl, '.'
	;int 21h  
    
    
    mov ah, playerColumn 
    cmp ah, monster8Column
    jg tryRight         
    cmp ah, monster8Column
    jl tryLeft
    
    tryUpDown:  ;same column so - try to turn up or down
    mov ah, playerRow 
    cmp ah, monster8Row
    jg tryDown
    
    tryUp:  ;try to turn up  
        mov [monster8ColDelta], 0   
        mov [monster8RowDelta], -1    
        call canIGoThere
        cmp [possibleDir], TRUE  
        je keepGoing13     

        
    tryDown:  ;try to turn down  
        mov [monster8ColDelta], 0   
        mov [monster8RowDelta], 1    
        call canIGoThere
        cmp [possibleDir], TRUE  
        je keepGoing13  
      
          
          
    tryLeft:  ;try to turn left
        mov [monster8ColDelta], -1   
        mov [monster8RowDelta], 0    
        call canIGoThere
        cmp [possibleDir], TRUE  
        je keepGoing13
        jmp tryUpDown  ;can't turn left so - try to turn up or down 
    
    tryRight:  ;try to turn right 
        mov [monster8ColDelta], 1   
        mov [monster8RowDelta], 0    
        call canIGoThere
        cmp [possibleDir], TRUE  
        je keepGoing13 
        jmp tryUpDown  ;can't turn right so - try to turn up or down 
    
    
    keepGoing13:
    cmp [monsterColor], RED
    je conti8 
    call readScreenChr
    mov ah, [screenChr]
    cmp ah, [playerShape] 
    jne conti8
    call addToScore
    mov monster8WasEaten, TRUE
    mov monster8Row      , 11 
    mov monster8Column   , 39  
    mov monster8ColDelta , -2
    mov monster8RowDelta , 0 
    jmp endMoveMonster8 
    conti8:
    
            
    ; draw smiley - ascii 2 at cursor position                                              
    mov ah, 9
    mov al, [monsterShape]       ; aL = character to display
    mov bx, [monster8Color]       ; bh = Background bl = Foreground
    mov cx, 1                    ; cx = number of times to write character
    int 10h 
         ; print chararcter
    ; set cursore location  
    
    
     endMoveMonster8:
   ; popa           
   
    ret
endp MoveMonster8
;-------------------------------------------------------------------------------------------------------------
     



;-------------------------------------------- function that checks if monster 8 can go to a certain direction
proc canIGoThere   
    push ax
    
    mov ah, monster8ColDelta 
    add [monster8Column], ah
    
    mov ah, monster8RowDelta 
    add [monster8Row], ah
    
    mov dh, monster8Row         ; row
    mov dl, monster8Column      ; column
    mov bh, 0                    ; page number
    mov ah, 2
    int 10h 
    
    
    call readScreenChr
    cmp [screenChr], '|'
    je no
    cmp [screenChr], '-'
    je no            
    cmp [screenChr], '+'
    je no 
                       
    mov [possibleDir], TRUE
    jmp endCanIGoThere 
    
    no:
    mov [possibleDir], FALSE 
    
    mov ah, monster8Column
    sub ah, monster8ColDelta
    mov monster8Column, ah
    mov ah, monster8Row
    sub ah, monster8RowDelta
    mov monster8Row, ah 
    
    endCanIGoThere:
    
    
    pop ax
     
    ret
endp canIGoThere 



;-------------------------------------------------------------------------------------------------------------         
proc getKeyPress
    push ax
    ; Get key direction from keyboard
    ; check to see if pressed
    mov ah, 1
    int 16h
    jz DoneKeyCheck

    mov ah, 0
    int 16h 
    cmp al, 0 ; nothing in AL, means we got a scancode - so player is moving
    jne wadx
    mov kbKey, ah; load the scan code to al    key for player 2 SCAN code for ARROW KEY
    jmp DoneKeyCheck
wadx: ; key for player1    
    mov kbKey, al 

DoneKeyCheck:    
    pop ax
    ret
endp getKeyPress
;-------------------------------------------------------------------------------------------------------------


       
          
;-------------------------------------------------------------------------------- function that moves the player
proc MovePlayer     
    pusha

    
    ; set cursor position 
    mov ah, 2
    mov bh, 0
    mov dh, playerRow
    mov dl, playerColumn
    int 10h        
    
    cmp [monsterColor], RED
    jne contMovePlayer 
    call readScreenChr
    cmp [screenChr], MONSTER
    je exit      
    contMovePlayer:     
         
    ; erase player
    mov ah, 9
    mov al, playerShape
    mov bh, 0
    mov bl, BLACK
    mov cx, 1
    int 10h          
    
    
   ; call delay
    
    
;    pop ax ; restore keyboard key                  
    ; pretend we just read the key from the interrupt
    mov al, kbKey ; load to register for comparisons              
    cmp al, QUIT
    je quiting
    cmp al, playerUpKey
    je goUp    
    cmp al, playerDownKey
    je goDown
    cmp al, playerLeftKey
    je goLeft
    cmp al, playerRightKey
    je goRight
    ;jmp setPos
    cmp al, 'h'
    jne MovePlayerNext
    add score, 5
    MovePlayerNext:
    cmp al, 'j'
    jne setPos
    mov [monsterColor], AQUA
    mov [monster8Color], AQUA
    jmp setPos 
    
    
goRight:    
    mov playerRowDelta, DIRECTION_STAY
    mov playerColDelta, DIRECTION_RIGHT
    jmp setPos
quiting:    
    mov stopping, TRUE
    jmp stopGame
goUp:    
    mov playerRowDelta, DIRECTION_UP
    mov playerColDelta, DIRECTION_STAY
    jmp setPos
goDown:    
    mov playerRowDelta, DIRECTION_DOWN
    mov playerColDelta, DIRECTION_STAY
    jmp setPos
goLeft:    
    mov playerRowDelta, DIRECTION_STAY
    mov playerColDelta, DIRECTION_LEFT
    ;jmp setPos
    
setPos:    


    mov ah, playerColumn
    add ah, playerColDelta
    mov playerColumn, ah
    mov ah, playerRow
    add ah, playerRowDelta
    mov playerRow, ah        
                   
   
   ;row - 13
   ;col - 12       

    cmp playerRow, 13
    jne notTel
    cmp playerColumn, 13
    jne notTel1  
    mov playerColumn, 65 
    jmp notTel
    notTel1:
    cmp playerColumn, 65
    jne notTel
    mov playerColumn, 13                                                      
    mov playerColumn, 13
    notTel:    

   
    ; set cursor position 
    mov ah, 2
    mov bh, 0
    mov dh, playerRow
    mov dl, playerColumn
    int 10h  
    
      
    call readScreenChr
    cmp [screenChr], '.'
    jne other
    inc [score]
    jmp else
    other:
     ;cmp [screenChr], MONSTER
     ;je exit 
     cmp [monsterColor], RED 
     jne other1
     cmp [screenChr], MONSTER
     je exit 
     
    other1:    
     cmp [screenChr], '|'
     je stopMoving
     cmp [screenChr], '-'
     je stopMoving  
     cmp [screenChr], '+'
     je stopMoving    
     
     cmp [screenChr], '@'
     jne else
     mov [monsterColor], AQUA
     mov [monster8Color], AQUA
     mov [eatingModeCounter], 0         
     jmp else  
     
    exit:
     mov stopping, TRUE
     jmp stopGame
    
    stopMoving:
     mov ah, playerColumn
     sub ah, playerColDelta
     mov playerColumn, ah
     mov ah, playerRow
     sub ah, playerRowDelta
     mov playerRow, ah        
                                                                
     
     ; set cursor position 
     mov ah, 2
     mov bh, 0
     mov dh, playerRow
     mov dl, playerColumn
     int 10h
     
    else:    
             
    ;print player
    mov ah, 9
    mov al, playerShape
    mov bh, 0
    mov bl, playerColor
    mov cx, 1
    int 10h   


stopGame:    
    popa
    
    ret
endp MovePlayer             
;-------------------------------------------------------------------------------------------------------------         
                  
         
;--------------------------------------------------------------------------------------------- delay function
proc delay
    pusha
    mov cx, 01h ;High Word
    mov dx, 0240h ;Low Word
    mov al, 0
    mov ah, 86h ;Wait
    int 15h
    popa
    ret
endp delay
;-------------------------------------------------------------------------------------------------------------  
  
  

  
end start ; set entry point and stop the assembler.
