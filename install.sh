#!/bin/bash

echo $'\n📥 Updating packages 📥'
apt update -y
echo $'✅ Packages Updated!\n\n------------------------\n'

echo "📥 Installing Neovim 📥"
git clone https://github.com/lnardon/FlyMeToTheMoon.git && cd FlyMeToTheMoon && chmod +x ./my_way.sh && ./my_way.sh
echo $'✅ Neovim installed and configured!\n\n-------------------------\n'

echo "📥 Installing Tmux 📥"
apt install tmux -y
echo $'✅ Tmux installed!\n\n-------------------------\n'

echo "📥 Installing BTOP 📥"
apt install btop -y
echo $'✅ BTOP installed!\n\n-------------------------\n'

echo "📥 Installing HTOP 📥"
apt install htop -y
echo $'✅ HTOP installed!\n\n-------------------------\n'

echo "📥 Installing Starship 📥"
curl -sS https://starship.rs/install.sh | sh
cp ./starship.toml ~/.config
echo $'✅ Starship installed!\n\n-------------------------\n'

echo "📥 Installing fzf 📥"
apt install fzf -y
echo $'✅ fzf installed!\n\n-------------------------\n'

echo "📥 Installing zoxide 📥"
curl -sSfL https://raw.githubusercontent.com/ajeetdsouza/zoxide/main/install.sh | sh
echo $'✅ Zoxide installed!\n\n-------------------------\n'

echo "📥 Installing Lazygit 📥"
LAZYGIT_VERSION=$(curl -s "https://api.github.com/repos/jesseduffield/lazygit/releases/latest" | \grep -Po '"tag_name": *"v\K[^"]*')
curl -Lo lazygit.tar.gz "https://github.com/jesseduffield/lazygit/releases/download/v${LAZYGIT_VERSION}/lazygit_${LAZYGIT_VERSION}_Linux_x86_64.tar.gz"
tar xf lazygit.tar.gz lazygit
install lazygit -D -t /usr/local/bin/
echo $'✅ Lazygit installed!\n\n-------------------------\n'

if [ -f "~/.bashrc" ] ; then
    rm "~/.bashrc"
fi

if [ -f "~/.bash_aliases" ] ; then
    rm "~/.bash_aliases"
fi
cp .bashrc ~/
cp .bash_aliases ~/

echo "📥 Installing Neofetch 📥"
apt install neofetch -y
echo $'✅ Neofetch installed!\n\n-------------------------\n'
neofetch

echo $'🎊🎊🎊 Setup complete! 🎊🎊🎊\n'

source ~/.bashrc
