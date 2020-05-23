#!/bin/sh
# Command used to install the efistub boot entry
efibootmgr -b 0000 -B 
efibootmgr --disk /dev/nvme0n1 --part 1 --create --label 'Arch Linux' --loader /vmlinuz-linux --unicode 'root=PARTUUID=47ed303a-7e00-274f-89c2-951d25a98d4d rw initrd=\amd-ucode.img initrd=\initramfs-linux.img fbcon=rotate:3 amd_iommu=on iommu=pt' --verbose
