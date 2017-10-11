0804863d <plain_nores>:
 804863d:	push   ebp
 804863e:	mov    ebp,esp
 8048640:	sub    esp,0x18
 8048643:	mov    DWORD PTR [ebp-0x18],0x0
 804864a:	call   8048350 <rand@plt>
 804864f:	mov    DWORD PTR [ebp-0x14],eax
 8048652:	cmp    DWORD PTR [ebp-0x14],0x0
 8048656:	jne    804865f <plain_nores+0x22>
 8048658:	mov    DWORD PTR [ebp-0x18],0x1
 804865f:	cmp    DWORD PTR [ebp-0x18],0x0
 8048663:	jne    804867a <plain_nores+0x3d>
 8048665:	call   8048350 <rand@plt>
 804866a:	mov    DWORD PTR [ebp-0x10],eax
 804866d:	cmp    DWORD PTR [ebp-0x10],0x0
 8048671:	jne    804867a <plain_nores+0x3d>
 8048673:	mov    DWORD PTR [ebp-0x18],0x2
 804867a:	cmp    DWORD PTR [ebp-0x18],0x0
 804867e:	jne    8048695 <plain_nores+0x58>
 8048680:	call   8048350 <rand@plt>
 8048685:	mov    DWORD PTR [ebp-0xc],eax
 8048688:	cmp    DWORD PTR [ebp-0xc],0x0
 804868c:	jne    8048695 <plain_nores+0x58>
 804868e:	mov    DWORD PTR [ebp-0x18],0x3
 8048695:	mov    eax,DWORD PTR [ebp-0x18]
 8048698:	leave  
 8048699:	ret    

