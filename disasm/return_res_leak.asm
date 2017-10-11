080484b7 <return_res_leak>:
 80484b7:	push   ebp
 80484b8:	mov    ebp,esp
 80484ba:	sub    esp,0x18
 80484bd:	sub    esp,0xc
 80484c0:	push   0x1
 80484c2:	call   8048330 <malloc@plt>
 80484c7:	add    esp,0x10
 80484ca:	mov    DWORD PTR [ebp-0x14],eax
 80484cd:	cmp    DWORD PTR [ebp-0x14],0x0
 80484d1:	jne    80484da <return_res_leak+0x23>
 80484d3:	mov    eax,0x1
 80484d8:	jmp    8048509 <return_res_leak+0x52>
 80484da:	call   8048350 <rand@plt>
 80484df:	mov    DWORD PTR [ebp-0x10],eax
 80484e2:	cmp    DWORD PTR [ebp-0x10],0x0
 80484e6:	jne    80484ef <return_res_leak+0x38>
 80484e8:	mov    eax,0x2
 80484ed:	jmp    8048509 <return_res_leak+0x52>
 80484ef:	call   8048350 <rand@plt>
 80484f4:	mov    DWORD PTR [ebp-0xc],eax
 80484f7:	cmp    DWORD PTR [ebp-0xc],0x0
 80484fb:	jne    8048504 <return_res_leak+0x4d>
 80484fd:	mov    eax,0x3
 8048502:	jmp    8048509 <return_res_leak+0x52>
 8048504:	mov    eax,0x0
 8048509:	leave  
 804850a:	ret    

