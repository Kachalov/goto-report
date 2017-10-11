0804869a <plain_res>:
 804869a:	push   ebp
 804869b:	mov    ebp,esp
 804869d:	sub    esp,0x18
 80486a0:	mov    DWORD PTR [ebp-0x18],0x0
 80486a7:	sub    esp,0xc
 80486aa:	push   0x1
 80486ac:	call   8048330 <malloc@plt>
 80486b1:	add    esp,0x10
 80486b4:	mov    DWORD PTR [ebp-0x14],eax
 80486b7:	cmp    DWORD PTR [ebp-0x14],0x0
 80486bb:	jne    80486c4 <plain_res+0x2a>
 80486bd:	mov    DWORD PTR [ebp-0x18],0x1
 80486c4:	cmp    DWORD PTR [ebp-0x18],0x0
 80486c8:	jne    80486df <plain_res+0x45>
 80486ca:	call   8048350 <rand@plt>
 80486cf:	mov    DWORD PTR [ebp-0x10],eax
 80486d2:	cmp    DWORD PTR [ebp-0x10],0x0
 80486d6:	jne    80486df <plain_res+0x45>
 80486d8:	mov    DWORD PTR [ebp-0x18],0x2
 80486df:	cmp    DWORD PTR [ebp-0x18],0x0
 80486e3:	jne    80486fa <plain_res+0x60>
 80486e5:	call   8048350 <rand@plt>
 80486ea:	mov    DWORD PTR [ebp-0xc],eax
 80486ed:	cmp    DWORD PTR [ebp-0xc],0x0
 80486f1:	jne    80486fa <plain_res+0x60>
 80486f3:	mov    DWORD PTR [ebp-0x18],0x3
 80486fa:	cmp    DWORD PTR [ebp-0x14],0x0
 80486fe:	je     804870e <plain_res+0x74>
 8048700:	sub    esp,0xc
 8048703:	push   DWORD PTR [ebp-0x14]
 8048706:	call   8048320 <free@plt>
 804870b:	add    esp,0x10
 804870e:	mov    eax,DWORD PTR [ebp-0x18]
 8048711:	leave  
 8048712:	ret    

