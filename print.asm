.MODEL Small ; Define o modelo de memoria small 
.STACK 64 ; Aloca um espaço/pilha de 64 bytes, espaço de alocaçao

.DATA ; Inicio da minha Instrucao

message db 'Da Rosa', '$'; Define uma mensagem e termina com $

.CODE ;  Inicio da secao de codigo
main proc ; Define o inicio do procedimento principal

mov ax, @data ; Carrega o endereco do segmenento em AX
mov ds, ax ; Move o vslor em AX para o registrador DS

mov ah, 9h ; Preparar o registrador AH para a funcao 09h do DOS
mov dx, offset message; vsi fazer o deslocamento da msg em DX

int 21h; Instrucao de Interrupcao

main endp ; Marca o fim 

end main ; indica o fim 