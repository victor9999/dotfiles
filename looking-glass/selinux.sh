ausearch -c 'qemu-system-x86' --raw | audit2allow -M my-qemusystemx86
semodule -X 300 -i my-qemusystemx86.pp
setsebool -P domain_can_mmap_files 1
