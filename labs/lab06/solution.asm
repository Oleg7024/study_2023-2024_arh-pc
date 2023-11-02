%include 'in_out.asm'
SECTION .data
msg: DB 'Введите переменную x: ',0
rem: DB 'Ответ: ',0
SECTION .bss
x: RESB 80
SECTION .text
GLOBAL _start
_start:

mov eax, msg  ; Вывод сообщения
call sprint   ; 'Введите переменную x:'

; Действие 1: присвоение переменной х
mov ecx, x    ;
mov edx, 80   ;
call sread    ; Ввод переменной х
mov eax,x     ; Вызов подпрограммы преобразования
call atoi     ; ASCII кода в число, `eax=x`

; Действие 2: вычитание единицы
sub eax,1     ; eax=eax-1
mov edi,eax   ; Освобождаю регистр eax

; Действие 3: деление 4/3
xor edx,edx   ; Обнуляю edx для корректной работы div
mov ebx,3     ;
mov eax,4     ; eax=eax/ebx , т.е. 4 на 3,
div ebx       ; остаток записывается в edx

; Действие 4: умножение результата Д3 на результат Д2
mul edi       ; eax=edi*eax

; Действие 5: сумма результата Д4 и числа 5
mov ebx,5
add eax,ebx   ; eax=eax+ebx=eax+5

; Вывод результата
mov edi,eax   ; Перемещаю результат в регистр edi
mov eax,rem   ; Вызов подпрограммы печати
call sprint   ; сообщения 'Ответ: '
mov eax,edi   ; Вызов подпрограммы печати значения
call iprintLF ; из 'edi' (результат) в виде символов

call quit

