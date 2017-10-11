0804850b <return_res_noleak>:
 804850b:	push   ebp
 804850c:	mov    ebp,esp
 804850e:	sub    esp,0x18
 8048511:	mov    DWORD PTR [ebp-0x18],0x0
 8048518:	sub    esp,0xc
 804851b:	push   0x1
 804851d:	call   8048330 <malloc@plt>
 8048522:	add    esp,0x10
 8048525:	mov    DWORD PTR [ebp-0x14],eax
 8048528:	cmp    DWORD PTR [ebp-0x14],0x0
 804852c:	jne    8048537 <return_res_noleak+0x2c>
 804852e:	mov    DWORD PTR [ebp-0x18],0x1
 8048535:	jmp    8048564 <return_res_noleak+0x59>
 8048537:	call   8048350 <rand@plt>
 804853c:	mov    DWORD PTR [ebp-0x10],eax
 804853f:	cmp    DWORD PTR [ebp-0x10],0x0
 8048543:	jne    804854e <return_res_noleak+0x43>
 8048545:	mov    DWORD PTR [ebp-0x18],0x2
 804854c:	jmp    8048564 <return_res_noleak+0x59>
 804854e:	call   8048350 <rand@plt>
 8048553:	mov    DWORD PTR [ebp-0xc],eax
 8048556:	cmp    DWORD PTR [ebp-0xc],0x0
 804855a:	jne    8048564 <return_res_noleak+0x59>
 804855c:	mov    DWORD PTR [ebp-0x18],0x3
 8048563:	nop
 8048564:	cmp    DWORD PTR [ebp-0x14],0x0
 8048568:	je     8048578 <return_res_noleak+0x6d>
 804856a:	sub    esp,0xc
 804856d:	push   DWORD PTR [ebp-0x14]
 8048570:	call   8048320 <free@plt>
 8048575:	add    esp,0x10
 8048578:	mov    eax,DWORD PTR [ebp-0x18]
 804857b:	leave
 804857c:	ret
