# Verificar se o código está sendo executado como root
if [[ $EUID -ne 0 ]]; then
   echo "Este script deve ser executado como root."
   exit 1
fi

echo "Instalando o Nano, Git e Fastfetch..."
pacman -S nano git fastfetch