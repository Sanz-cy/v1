#!/bin/bash
# ==========================================
# KALI PENGUIN TERMINAL THEME
# ==========================================

# [1. SYSTEM SETUP]
pkg update -y && pkg upgrade -y
pkg install -y neofetch figlet lolcat termux-api

# [2. PENGUIN BANNER]
cat > ~/.kali_penguin <<'EOL'
__________________________________________________________
    ,-.       _,---._ __  / \
   /  )    .-'       `./ /   \
  (  (   ,'            `/    /|
   \  `-"             \'\   / |
    `.              ,  \ \ /  |
      /`.          /'-./\ /   |
     /   `'-.____,'   '      /
    (        /    \  '.     /
     \      /      \   )   /
      '----'        '-'   '
__________________________________________________________
EOL

# [3. AUTO-LOAD CONFIG]
echo '
# ======================
# KALI PENGUIN STARTUP
# ======================
clear
echo -e "\e[1;36m"
cat ~/.kali_penguin | lolcat
echo -e "\e[1;33m$(date "+%A, %d %B %Y | %H:%M:%S")\e[0m"
neofetch --ascii_distro kali_linux

# ======================
# PROMPT STYLE
# ======================
export PS1="\[\e[1;31m\]┌─[\[\e[1;33m\]\u@kali-penguin\[\e[1;31m\]]\n└─╼ \[\e[1;36m\]\w \[\e[1;31m\]>\[\e[0m\] "

# ======================
# SHORTCUTS
# ======================
alias penguin="figlet -f slant 'KALI PENGUIN' | lolcat"
alias myip="termux-ip-address | grep 'inet'"
' >> ~/.bashrc

# [4. COLOR SCHEME]
mkdir -p ~/.termux
echo '{
  "background":"#000000",
  "foreground":"#00FF00",
  "color0":"#002200",
  "color1":"#FF0000",
  "color2":"#00FF00",
  "cursor":"#00FF00"
}' > ~/.termux/colors.properties

# [5. FINAL TOUCH]
termux-reload-settings
chmod +x ~/.kali_penguin
echo -e "\e[1;32m[+] KALI PENGUIN THEME READY! \e[0m"