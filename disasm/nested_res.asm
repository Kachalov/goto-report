080485d2 <nested_res>:
 80485d2:	push   ebp
 80485d3:	mov    ebp,esp
 80485d5:	sub    esp,0x18
 80485d8:	mov    DWORD PTR [ebp-0x18],0x0
 80485df:	sub    esp,0xc
 80485e2:	push   0x1
 80485e4:	call   8048330 <malloc@plt>
 80485e9:	add    esp,0x10
 80485ec:	mov    DWORD PTR [ebp-0x14],eax
 80485ef:	cmp    DWORD PTR [ebp-0x14],0x0
 80485f3:	jne    80485fe <nested_res+0x2c>
 80485f5:	mov    DWORD PTR [ebp-0x18],0x1
 80485fc:	jmp    8048638 <nested_res+0x66>
 80485fe:	call   8048350 <rand@plt>
 8048603:	mov    DWORD PTR [ebp-0x10],eax
 8048606:	cmp    DWORD PTR [ebp-0x10],0x0
 804860a:	jne    8048615 <nested_res+0x43>
 804860c:	mov    DWORD PTR [ebp-0x18],0x2
 8048613:	jmp    804862a <nested_res+0x58>
 8048615:	call   8048350 <rand@plt>
 804861a:	mov    DWORD PTR [ebp-0xc],eax
 804861d:	cmp    DWORD PTR [ebp-0xc],0x0
 8048621:	jne    804862a <nested_res+0x58>
 8048623:	mov    DWORD PTR [ebp-0x18],0x3
 804862a:	sub    esp,0xc
 804862d:	push   DWORD PTR [ebp-0x14]
 8048630:	call   8048320 <free@plt>
 8048635:	add    esp,0x10
 8048638:	mov    eax,DWORD PTR [ebp-0x18]
 804863b:	leave  
 804863c:	ret    

