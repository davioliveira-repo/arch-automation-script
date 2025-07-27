# Verificar se o código está sendo executado como root
if [[ $EUID -ne 0 ]]; then
   echo "This script must be run as root"
   exit 1
fi

echo "Installing Nano, Git and Fastfetch..."
pacman -S nano git fastfetch -y

echo "Installing Firewall..."
pacman -S gufw -y

echo "Installing Codecs"
pacman -S ffmpeg gst-plugins-ugly gst-plugins-good gst-plugins-base gst-plugins-bad gst-libav gstreamer -y

echo "Installing Firmware Manager..."
pacman -S fwupd