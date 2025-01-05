import os

home="/home/navenn_t/"
dotfilePath= home + "dotfiles/"

def backup(linkTarget, linkLocation = None, linkPrefix=(home + ".config/")):
    print(linkTarget, linkLocation, linkPrefix)
    if linkLocation != None:
        destination = linkPrefix + linkLocation
    else:
        destination = linkPrefix + linkTarget
    try :
            if os.path.exists(destination) and os.path.isDir(destination):
                os.rename(destination, destination + ".bak")
            os.symlink(dotfilePath + linkTarget, destination)
    except:
        return

links = [
    ['i3'],
    ['polybar'],
    ['dunst'],
    ['dunst-icons', None , home + '.local/share/'],
    ['compton'],
    ['rofi'], ['terminator']
]

for link in links:
    backup(*link)
