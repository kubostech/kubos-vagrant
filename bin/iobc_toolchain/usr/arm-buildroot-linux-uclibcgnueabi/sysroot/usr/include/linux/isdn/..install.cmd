cmd_/usr/bin/iobc_toolchain/usr/arm-buildroot-linux-uclibcgnueabi/sysroot/usr/include/linux/isdn/.install := /bin/bash scripts/headers_install.sh /usr/bin/iobc_toolchain/usr/arm-buildroot-linux-uclibcgnueabi/sysroot/usr/include/linux/isdn ./include/uapi/linux/isdn capicmd.h; /bin/bash scripts/headers_install.sh /usr/bin/iobc_toolchain/usr/arm-buildroot-linux-uclibcgnueabi/sysroot/usr/include/linux/isdn ./include/linux/isdn ; /bin/bash scripts/headers_install.sh /usr/bin/iobc_toolchain/usr/arm-buildroot-linux-uclibcgnueabi/sysroot/usr/include/linux/isdn ./include/generated/uapi/linux/isdn ; for F in ; do echo "\#include <asm-generic/$$F>" > /usr/bin/iobc_toolchain/usr/arm-buildroot-linux-uclibcgnueabi/sysroot/usr/include/linux/isdn/$$F; done; touch /usr/bin/iobc_toolchain/usr/arm-buildroot-linux-uclibcgnueabi/sysroot/usr/include/linux/isdn/.install
