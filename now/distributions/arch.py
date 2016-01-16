from common.systemd import *

force = \
"""
if [[ $force ]]; then
    force="--noconfirm"
fi
"""

def install():
    return force + "sudo pacman $force -S $packages"

def update():
    return force + "sudo pacman $force -Syu"
