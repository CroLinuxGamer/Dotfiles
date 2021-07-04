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

eval "$(ssh-agent -s)" &> /dev/null
# ssh-add ~/.ssh/id_ed25519_gh_ct
# ssh-add ~/.ssh/id_ed25519-cronyakatsuki &> /dev/null

# if [ "$TERM" = "linux" ]; then
#     printf %b '\e[40m' '\e[8]' # set default background to color 0 'dracula-bg'
#     printf %b '\e[37m' '\e[8]' # set default foreground to color 7 'dracula-fg'
#     printf %b '\e]P0282a36'    # redefine 'black'          as 'dracula-bg'
#     printf %b '\e]P86272a4'    # redefine 'bright-black'   as 'dracula-comment'
#     printf %b '\e]P1ff5555'    # redefine 'red'            as 'dracula-red'
#     printf %b '\e]P9ff7777'    # redefine 'bright-red'     as '#ff7777'
#     printf %b '\e]P250fa7b'    # redefine 'green'          as 'dracula-green'
#     printf %b '\e]PA70fa9b'    # redefine 'bright-green'   as '#70fa9b'
#     printf %b '\e]P3f1fa8c'    # redefine 'brown'          as 'dracula-yellow'
#     printf %b '\e]PBffb86c'    # redefine 'bright-brown'   as 'dracula-orange'
#     printf %b '\e]P4bd93f9'    # redefine 'blue'           as 'dracula-purple'
#     printf %b '\e]PCcfa9ff'    # redefine 'bright-blue'    as '#cfa9ff'
#     printf %b '\e]P5ff79c6'    # redefine 'magenta'        as 'dracula-pink'
#     printf %b '\e]PDff88e8'    # redefine 'bright-magenta' as '#ff88e8'
#     printf %b '\e]P68be9fd'    # redefine 'cyan'           as 'dracula-cyan'
#     printf %b '\e]PE97e2ff'    # redefine 'bright-cyan'    as '#97e2ff'
#     printf %b '\e]P7f8f8f2'    # redefine 'white'          as 'dracula-fg'
#     printf %b '\e]PFffffff'    # redefine 'bright-white'   as '#ffffff'
#     clear
# fi

