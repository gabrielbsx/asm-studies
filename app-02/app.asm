section .text
  global _start
_start:
  ; enter with a number
  mov eax, 4
  mov ebx, 1
  mov ecx, enter_with_number
  mov edx, enter_with_number_len
  int 0x80

  ; read the number
  mov eax, 3
  mov ebx, 0
  mov ecx, number
  mov edx, 4
  int 0x80

  ; sub 3 to the number int
  mov eax, [number]
  sub eax, [number]
  mov [number], eax

  ; print the number
  mov eax, 4
  mov ebx, 1
  mov ecx, print_number
  mov edx, 2
  int 0x80  

  ; exit
  mov eax, 1
  mov ebx, 0
  int 0x80

section .data
enter_with_number     db      'Enter with a number: ', 0xa
enter_with_number_len     equ     $ - enter_with_number
number     dd      0
print_number     db      '%d', 0xa