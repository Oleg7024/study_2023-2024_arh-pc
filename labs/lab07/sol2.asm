%include 'in_out.asm'
section .data
msg1 db 'Введите переменную x: ',0h
msg2 db 'Введите переменную a: ',0h
msg3 db 'Ответ: ',0h
section .bss
x resb 10
a resb 10
section .text
global _start
_start:
; ------------ Сообщение 'Введите переменную x: '
mov eax,msg1
call sprint
; ------------ Ввод 'x'
mov ecx,x
mov edx,10
call sread
; ------------ Преобразование 'x' из символа в число
mov eax,x
call atoi   ; Вызов подпрограммы перевода символа в число
mov [x],eax ; запись преобразованного числа в 'x'
; ------------ Сообщение 'Введите переменную a: '
mov eax,msg2
call sprint
; ------------ Ввод 'a'
mov ecx,a
mov edx,10
call sread
; ------------ Преобразование 'a' из символа в число
mov eax,a
call atoi   ; Вызов подпрограммы перевода символа в число
mov [a],eax ; запись преобразованного числа в 'a'

; ------------ Задание выражения при различных a
mov ecx,0   ; 'ecx=0'
cmp ecx,[a] ; Сравниваю 0 и 'a'
je equal_0  ; Если 'a=0' , то переход в секцию 'equal_0'
mov ecx,[a] ; иначе, 'ecx = а'
mov eax,[x] ; 'eax=x
mov edi, 2  ; 'edi=2'
mul edi     ; 'eax=eax*edi=x*2'
add eax,ecx ; 'eax=eax+ecx=2x+a'
mov edi,eax ; 'edi<-eax=2x+a'

; ------------- Завершение программы
fin:
mov eax, msg3  
call sprint   ; Вывод сообщения 'Ответ: '
mov eax,edi
call iprintLF ; Вывод '2x+a или 2x+1'
call quit 

; ------------ Если а=0
equal_0:
cmp ecx,[a] ; Сравнение 'ecx=0' и 'a'
jne fin     ; Если a не равно 0, то переход к 'fin'
mov ecx,1   ; иначе 'ecx=1'
mov eax,[x] ; 'eax=x'
mov edi, 2  ; 'edi=2'
mul edi     ; 'eax=eax*edi=x*2'
add eax,ecx ; 'eax=eax+ecx=2x+1'
mov edi,eax ; 'edi<-eax'
jmp fin     ; Безусловный переход к 'fin'























