#!/usr/bin/env bash
# profiledef.sh

iso_name="ghostos"
iso_label="GHOST_OS_$(date +%Y%m)"
iso_publisher="GhostOS Project <https://github.com/ghostos>"
iso_application="GhostOS Live/Installation Media"
iso_version="$(date +%Y.%m.%d)"
install_dir="arch"
buildmodes=('iso')
bootmodes=('bios.syslinux' 'uefi.grub')
arch="x86_64"
pacman_conf="pacman.conf"
airootfs_image_type="squashfs"
airootfs_image_tool_options=('-comp' 'xz' '-Xbcj' 'x86')
file_permissions=(
  ["/etc/shadow"]="0:0:400"
  ["/root"]="0:0:750"
  ["/usr/local/bin/opsec-live-setup"]="0:0:755"
  ["/etc/calamares/modules"]="0:0:755"
  ["/etc/sysctl.d/99-security.conf"]="0:0:644"
  ["/etc/dnscrypt-proxy/dnscrypt-proxy.toml"]="0:0:644"
)
