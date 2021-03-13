#!/bin/sh

qdbus org.kde.KWin /Compositor suspend
dmenuryzenadj
prime-run kdenlive $1
dmenuryzenadj
qdbus org.kde.KWin /Compositor resume
