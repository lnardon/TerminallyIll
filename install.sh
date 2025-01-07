#!/bin/bash

echo $'\n📥 Updating packages 📥'
apt update -y
echo $'✅ Packages Updated!\n\n------------------------\n'

echo "📥 Installing BTOP 📥"
apt install btop -y
echo $'✅ BTOP installed!\n\n-------------------------\n'

echo "📥 Installing HTOP 📥"
apt install htop -y
echo $'✅ HTOP installed!\n\n-------------------------\n'

echo $'🎊🎊🎊 Setup complete! 🎊🎊🎊\n'
