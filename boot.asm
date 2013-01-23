    org     07c00h	;加载到内存7c00处
    mov     ax, cs	;以下清空ax, ds, es寄存器
    mov     ds, ax
    mov     es, ax
    call    DispStr	;调用显示
    halt
    jmp     $
DispStr:		;显示字符串到屏幕上，显示是调用BIOS中的写好的函数
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
dw      0xaa55		;510是55, 511是aa则认为是可引导程序
