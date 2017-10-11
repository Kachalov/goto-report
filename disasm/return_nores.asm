0804846b <return_nores>:
 804846b:	push   ebp
 804846c:	mov    ebp,esp
 804846e:	sub    esp,0x18
 8048471:	call   8048350 <rand@plt>
 8048476:	mov    DWORD PTR [ebp-0x14],eax
 8048479:	cmp    DWORD PTR [ebp-0x14],0x0
 804847d:	jne    8048486 <return_nores+0x1b>
 804847f:	mov    eax,0x1
 8048484:	jmp    80484b5 <return_nores+0x4a>
 8048486:	call   8048350 <rand@plt>
 804848b:	mov    DWORD PTR [ebp-0x10],eax
 804848e:	cmp    DWORD PTR [ebp-0x10],0x0
 8048492:	jne    804849b <return_nores+0x30>
 8048494:	mov    eax,0x2
 8048499:	jmp    80484b5 <return_nores+0x4a>
 804849b:	call   8048350 <rand@plt>
 80484a0:	mov    DWORD PTR [ebp-0xc],eax
 80484a3:	cmp    DWORD PTR [ebp-0xc],0x0
 80484a7:	jne    80484b0 <return_nores+0x45>
 80484a9:	mov    eax,0x3
 80484ae:	jmp    80484b5 <return_nores+0x4a>
 80484b0:	mov    eax,0x0
 80484b5:	leave  
 80484b6:	ret    

