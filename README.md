# Kontron pITX-imx8m Buildroot External

## Build

You have to clone buildroot and this layer. When building, use the
appropriate defconfig in the `buildroot-external-picoitx-imx8m/configs`
directory.

```
git clone git://git.busybox.net/buildroot -b tbd
git clone https://github.com/kontron/buildroot-external-pitx-imx8m.git
mkdir build
cd build
make -C ../buildroot BR2_EXTERNAL=../buildroot-external-pitx-imx8m O=`pwd` kontron_pitx_imx8m_qt5_gst1_defconfig
make
```

The resulting bootloader, kernel, root filesystem and SD card image will
be put in the `build/images` directory.

