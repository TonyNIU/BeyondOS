    org     07c00h	;���ص��ڴ�7c00��
    mov     ax, cs	;�������ax, ds, es�Ĵ���
    mov     ds, ax
    mov     es, ax
    call    DispStr	;������ʾ
    halt
    jmp     $
DispStr:		;��ʾ�ַ�������Ļ�ϣ���ʾ�ǵ���BIOS�е�д�õĺ���
    mov     ax, BootMessage
    mov     bp, ax
    mov     cx, 10
    mov     ax, 01301h
    mov     bx, 000ch
    mov     dl, 0
    int     10h
    ret
BootMessage:            db  "Hollo, wErld!"
times   510-($-$$)      db  0
dw      0xaa55		;510��55, 511��aa����Ϊ�ǿ���������
