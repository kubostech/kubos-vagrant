cmd_/usr/bin/iobc_toolchain/usr/arm-buildroot-linux-uclibcgnueabi/sysroot/usr/include/linux/hdlc/.install := /bin/bash scripts/headers_install.sh /usr/bin/iobc_toolchain/usr/arm-buildroot-linux-uclibcgnueabi/sysroot/usr/include/linux/hdlc ./include/uapi/linux/hdlc ioctl.h; /bin/bash scripts/headers_install.sh /usr/bin/iobc_toolchain/usr/arm-buildroot-linux-uclibcgnueabi/sysroot/usr/include/linux/hdlc ./include/linux/hdlc ; /bin/bash scripts/headers_install.sh /usr/bin/iobc_toolchain/usr/arm-buildroot-linux-uclibcgnueabi/sysroot/usr/include/linux/hdlc ./include/generated/uapi/linux/hdlc ; for F in ; do echo "\#include <asm-generic/$$F>" > /usr/bin/iobc_toolchain/usr/arm-buildroot-linux-uclibcgnueabi/sysroot/usr/include/linux/hdlc/$$F; done; touch /usr/bin/iobc_toolchain/usr/arm-buildroot-linux-uclibcgnueabi/sysroot/usr/include/linux/hdlc/.install
