export QT_QPA_PLATFORMTHEME="qt5ct"
MANGOHUD=1
# startx
[[ $(fgconsole 2>/dev/null) == 1 ]] && exec startx -- vt1 &> /dev/null
