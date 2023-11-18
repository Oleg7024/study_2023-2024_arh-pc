%include 'in_out.asm'
SECTION .data
filename db 'name.txt',0h   ; имя файла
msg1 db 'Как Вас зовут? ',0h ; сообщение 1
msg2 db 'Меня зовут ',0h     ; сообщение 2
SECTION .bss
cont resb 255       ; переменная для вводимой строки
SECTION .text
global _start
_start:
mov eax, msg1
call sprint   ; вывод сообщения msg1
mov ecx,cont

mov ecx, cont
mov edx, 255
call sread    ; запись введенной с клавиатуры строки

; создание файла name.txt (sys_creat)
mov ecx, 0777o ; установка прав доступа
mov ebx, filename ; имя созданного файла
mov eax, 8     ; код системного вызова creat
int 80h

; запись дискриптора файла в 'esi'
mov esi, eax

; расчет длины msg2
mov eax, msg2
call slen
mov edi, eax ; запись длины в 'edi'

; запись в файл сообщения msg2 (sys_write)
mov edx, edi  ; запись длины msg2 в байтах
mov ecx, msg2 ; сообщение
mov ebx, esi  ; дискриптор
mov eax, 4    ; код системного вызова
int 80h

; расчет длины введенной строки
mov eax, cont
call slen

; запись в файл введенной строки (sys_write)
mov edx, eax    ; запись длины cont в байтах
mov ecx, cont   ; сообщение
mov ebx, esi    ; дискриптор
mov eax, 4      ; код системного вызова
int 80h

; закрыть файл (sys_close)
mov ebx, esi    ; дискриптор
mov eax, 6      ; код системного вызова
int 80h

call quit
