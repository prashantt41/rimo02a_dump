#!/system/bin/sh
if ! applypatch -c EMMC:/dev/block/bootdevice/by-name/recovery:14617884:98654cc2048a7463d4dd5c76c05694cdefb367a4; then
  applypatch -b /system/etc/recovery-resource.dat EMMC:/dev/block/bootdevice/by-name/boot:12070168:3fba3457e10390b846331ea702d55637812f3b15 EMMC:/dev/block/bootdevice/by-name/recovery 98654cc2048a7463d4dd5c76c05694cdefb367a4 14617884 3fba3457e10390b846331ea702d55637812f3b15:/system/recovery-from-boot.p && log -t recovery "Installing new recovery image: succeeded" || log -t recovery "Installing new recovery image: failed"
else
  log -t recovery "Recovery image already installed"
fi
