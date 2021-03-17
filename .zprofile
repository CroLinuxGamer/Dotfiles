# Config by
  # ____                            _    _         _             _    _
 # / ___|_ __ ___  _ __  _   _     / \  | | ____ _| |_ ___ _   _| | _(_)
# | |   | '__/ _ \| '_ \| | | |   / _ \ | |/ / _` | __/ __| | | | |/ / |
# | |___| | | (_) | | | | |_| |  / ___ \|   < (_| | |_\__ \ |_| |   <| |
 # \____|_|  \___/|_| |_|\__, | /_/   \_\_|\_\__,_|\__|___/\__,_|_|\_\_|
                       # |___/

# export QT_QPA_PLATFORMTHEME="qt5ct"
# bspwm tty1
# [[ $(fgconsole 2>/dev/null) == 1 ]] && exec startx "$XDG_CONFIG_HOME/xinit/startbspwmx" -- vt1 # &> /dev/null

eval `ssh-agent -s`
ssh-add "$HOME"/.ssh/id_rsa_gh_manjaro
trap 'kill $SSH_AGENT_PID' EXIT
