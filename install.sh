#!/bin/bash

echo $'\n📥 Updating packages 📥'
apt update -y
echo $'✅ Packages Updated!\n\n------------------------\n'

echo "📥 Installing Neovim 📥"
git clone https://github.com/lnardon/FlyMeToTheMoon.git && cd FlyMeToTheMoon && chmod +x ./my_way.sh && ./my_way.sh
echo $'✅ Neovim installed and configured!\n\n-------------------------\n'

echo "📥 Installing BTOP 📥"
apt install btop -y
echo $'✅ BTOP installed!\n\n-------------------------\n'

echo "📥 Installing HTOP 📥"
apt install htop -y
echo $'✅ HTOP installed!\n\n-------------------------\n'

echo "📥 Installing Oh-my-bash 📥"
bash -c "$(curl -fsSL https://raw.githubusercontent.com/ohmybash/oh-my-bash/master/tools/install.sh)"
echo $'✅ Oh-my-bash installed!\n\n-------------------------\n'

echo "📥 Installing Neofetch 📥"
apt install neofetch -y
echo $'✅ Neofetch installed!\n\n-------------------------\n'
neofetch

echo $'🎊🎊🎊 Setup complete! 🎊🎊🎊\n'
