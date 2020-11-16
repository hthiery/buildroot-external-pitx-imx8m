echo "Root File Sytem on MMC${devnum}"
setenv rootfs /dev/mmcblk${devnum}p1
setenv bootargs console=ttymxc2,115200 root=${rootfs}

load ${devtype} ${devnum} ${kernel_addr_r} boot/Image
load ${devtype} ${devnum} ${fdt_addr_r} boot/pitx-imx8m_hdmi.dtb

booti ${kernel_addr_r} - ${fdt_addr_r}
