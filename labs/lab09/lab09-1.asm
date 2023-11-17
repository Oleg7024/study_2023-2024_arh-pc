%include 'in_out.asm'
SECTION .data
msg: DB 'Введите x: ',0
result: DB 'Результат: 2*g(x)+7=',0
ad: DB 'где g(x)=3x-1',0  ; новое выражение является сложной функцией
SECTION .bss
x: RESB 80
res: RESB 80
SECTION .text
GLOBAL _start
_start:
;------------------------------------------
; Основная программа
;------------------------------------------
mov eax, msg
call sprint
mov ecx, x
mov edx, 80
call sread
mov eax,x
call atoi
call _calcul ; Вызов подпрограммы _calcul
mov eax,result
call sprint
mov eax,[res]
call iprintLF
mov eax,ad
call sprintLF
call quit

;------------------------------------------
; Подпрограмма вычисления
; выражения "2x+7"
_calcul:
call _subcalcul ; Вызов подпрограммы _subcalcul
mov ebx,2
mul ebx
add eax,7
mov [res],eax
ret ; выход из подпрограммы

_subcalcul: ; подпрограмма подпрограммы
mov ebx,3  ; ebx=3
mul ebx    ; eax=eax*ebx
sub eax,1  ; eax=eax-1
ret        ; завершение _subcalcul
