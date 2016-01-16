force = \
"""
if [[ $force ]]; then
    force="-y"
fi
"""

def install():
    return force + "sudo apt-get install $force $packages"

def update():
    return force + \
"""
if [[ $all ]]; then
    sudo apt-get dist-upgrade $force
else
    sudo apt-get upgrade $force
fi
"""
