#!/bin/bash
# ==========================================
# KALI LINUX TERMINAL PERFECTION
# ==========================================

# [1. SYSTEM OPTIMIZATION]
pkg update -y && pkg upgrade -y
pkg install -y neofetch lolcat figlet toilet termux-elf-cleaner

# [2. PRECISION BANNER]
cat > ~/.kali_banner <<'EOL'
__________________________________________________________
   ▄█    █▄       ▄████████  ▄█        ▄█  ████████▄  
  ███    ███     ███    ███ ███       ███  ███   ▀███  
  ███    ███     ███    ███ ███       ███▌ ███    ███  
 ▄███▄▄▄▄███▄▄   ███    ███ ███       ███▌ ███    ███  
▀▀███▀▀▀▀███▀  ▀███████████ ███       ███▌ ███    ███  
  ███    ███     ███    ███ ███       ███  ███    ███  
  ███    ███     ███    ███ ███▌    ▄ ███  ███   ▄███  
  ███    █▀      ███    █▀  █████▄▄██ █▀   ████████▀   
                                ▀                      
__________________________________________________________
EOL

# [3. PROMPT PERFECTION]
echo '
# ======================
# KALI LINUX PRO MODE
# ======================
clear
echo -e "\e[1;31m"
cat ~/.kali_banner | lolcat -p 1.5
echo -e "\e[1;33m$(date "+%A, %d %B %Y | %H:%M:%S")\e[0m"
neofetch --ascii_distro kali_linux --backend off --color_blocks off

# ======================
# ELITE PROMPT
# ======================
export PS1="\[\e[38;5;196m\]┌─[\[\e[38;5;33m\]\u@kali-pro\[\e[38;5;196m\]]\n└─╼ \[\e[38;5;202m\]\w \[\e[38;5;196m\]>\[\e[0m\] "

# ======================
# SHORTCUT PRO
# ======================
alias scan="echo -e '\e[1;31mInitializing port scanner...\e[0m'"
alias hide="termux-elf-cleaner"
' >> ~/.bashrc

# [4. COLOR SCHEME]
mkdir -p ~/.termux
echo '{
  "background":"#000000",
  "foreground":"#FF5555",
  "color0":"#0F0000",
  "color1":"#FF0000",
  "color2":"#00FF00",
  "cursor":"#FF0000"
}' > ~/.termux/colors.properties

# [5. FINAL TOUCH]
termux-reload-settings
chmod +x ~/.kali_banner
echo -e "\e[1;32m[√] KALI LINUX TERMINAL READY FOR WAR!\e[0m"