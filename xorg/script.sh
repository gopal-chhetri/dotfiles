#!/bin/bash
# Drop optimus-manager, let nvidia_drm/nvidia_modeset load, use PRIME render offload.
# Run with: sudo bash ~/script.sh
set -euo pipefail

if [ "$EUID" -ne 0 ]; then
  echo "Run as root: sudo bash $0" >&2
  exit 1
fi

BK=/root/gpu-config-backup-$(date +%F-%H%M%S)
mkdir -p "$BK"
for f in /etc/X11/xorg.conf.d/10-optimus-manager.conf \
         /etc/X11/xorg.conf.d/20-amdgpu.conf \
         /etc/modprobe.d/supergfxd.conf \
         /etc/modprobe.d/nvidia-drm-nomodeset.conf \
         /etc/optimus-manager/optimus-manager.conf; do
  if [ -e "$f" ]; then
    cp -a "$f" "$BK/"
    echo "backed up $f"
  fi
done

systemctl disable --now optimus-manager.service || true
if pacman -Q optimus-manager-git &>/dev/null; then
  pacman -Rns --noconfirm optimus-manager-git
fi

rm -f /etc/X11/xorg.conf.d/10-optimus-manager.conf \
      /etc/X11/xorg.conf.d/20-amdgpu.conf \
      /etc/modprobe.d/supergfxd.conf

# modeset=1 is already set; add fbdev=1 alongside it
if ! grep -q fbdev /etc/modprobe.d/nvidia-drm-nomodeset.conf; then
  sed -i 's/options nvidia-drm modeset=1/options nvidia-drm modeset=1 fbdev=1/' \
    /etc/modprobe.d/nvidia-drm-nomodeset.conf
fi

mkinitcpio -P

echo
echo "Done. Backups in $BK"
echo "Reboot, then check:"
echo "  lsmod | grep nvidia_drm"
echo "  xrandr --listproviders        # expect 2 providers"
echo "  __NV_PRIME_RENDER_OFFLOAD=1 __GLX_VENDOR_LIBRARY_NAME=nvidia glxinfo -B   # expect RTX 3050"
