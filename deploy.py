import os

home="/home/navenn_t/"
dotfilePath= home + "dotfiles/"

def backup(linkTarget, linkLocation = None, linkPrefix=(home + ".config/")):
    print(linkTarget, linkLocation, linkPrefix)
    try :
        if linkLocation != None:
            os.symlink(dotfilePath + linkTarget, linkPrefix + linkLocation)
        else:
            os.symlink(dotfilePath + linkTarget, linkPrefix + linkTarget)
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