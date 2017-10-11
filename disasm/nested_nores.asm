0804857d <nested_nores>:
 804857d:	push   ebp
 804857e:	mov    ebp,esp
 8048580:	sub    esp,0x18
 8048583:	mov    DWORD PTR [ebp-0x18],0x0
 804858a:	call   8048350 <rand@plt>
 804858f:	mov    DWORD PTR [ebp-0x14],eax
 8048592:	cmp    DWORD PTR [ebp-0x14],0x0
 8048596:	jne    80485a1 <nested_nores+0x24>
 8048598:	mov    DWORD PTR [ebp-0x18],0x1
 804859f:	jmp    80485cd <nested_nores+0x50>
 80485a1:	call   8048350 <rand@plt>
 80485a6:	mov    DWORD PTR [ebp-0x10],eax
 80485a9:	cmp    DWORD PTR [ebp-0x10],0x0
 80485ad:	jne    80485b8 <nested_nores+0x3b>
 80485af:	mov    DWORD PTR [ebp-0x18],0x2
 80485b6:	jmp    80485cd <nested_nores+0x50>
 80485b8:	call   8048350 <rand@plt>
 80485bd:	mov    DWORD PTR [ebp-0xc],eax
 80485c0:	cmp    DWORD PTR [ebp-0xc],0x0
 80485c4:	jne    80485cd <nested_nores+0x50>
 80485c6:	mov    DWORD PTR [ebp-0x18],0x3
 80485cd:	mov    eax,DWORD PTR [ebp-0x18]
 80485d0:	leave  
 80485d1:	ret    

