%include 'in_out.asm'

SECTION .data
div: DB 'Результат: ',0
rem: DB 'Остаток от деления: ',0
SECTION .text
GLOBAL _start
 _start:

; Вычисление выражения

mov eax,4     ; EAX=4
mov ebx,6     ; EBX=6  
mul ebx       ; EAX=EAX*EBX
add eax,2     ; EAX=EAX+2
xor edx,edx   ; Обнуляем EDX для корректной работы div
mov ebx,5     ; EBX=5
div ebx       ; EAX=EAX/5, EDX=остаток
mov edi,eax   ; Запись результата вычисления в 'edi'

; Вывод результата на экран

mov eax,div   ; Вызов подпрограммы печати
call sprint   ; сообщения 'Результат: ' 
mov eax,edi   ; Вызов подпрограммы печати 
call iprintLF ; значения из 'edi' в виде символов

mov eax,rem   ; Вызов подпрограммы печати
call sprint   ; сообщения 'Остаток от деления: '
mov eax,edx   ; Вызов подпрограммы печати значения
call iprintLF ; из 'edx' (остаток) в виде символов

call quit
