echo "Root File Sytem on MMC${devnum}"
setenv rootfs /dev/mmcblk${devnum}p1
setenv bootargs root=${rootfs} rootwait rw

load ${devtype} ${devnum} ${kernel_addr_r} boot/Image
load ${devtype} ${devnum} ${fdt_addr_r} boot/imx8mm-kontron-n801x-s.dtb

booti ${kernel_addr_r} - ${fdt_addr_r}
