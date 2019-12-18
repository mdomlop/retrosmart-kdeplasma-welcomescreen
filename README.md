Retrosmart KDE Plasma Welcome screen
------------------------------------

![retrosmart-preview](https://raw.githubusercontent.com/mdomlop/retrosmart-kdeplasma-welcomescreen/master/preview.gif "Retrosmart KDE splash screen preview")

Welcome screen for retrosmart themes.


Installation
------------

For a system-wide installation run:

    # make install

For a user-only installation run:

    # make user_install

Alternatively you can build and install a Arch Linux package:

    $ makepkg -d
    # pacman -U retrosmart-kdeplasma-welcomescreen-*.pkg.tar.gz

or install it from AUR:

    $ trizen -S retrosmart-kdeplasma-welcomescreen

Uninstallation
--------------

For uninstall run:

    # make uninstall

or:

    $ make user_uninstall

or:

    # pacman -Rsc retrosmart-kdeplasma-welcomescreen


For a successful compilation you need *imagemagick* for generate PNGs from XPMs
and *xcursorgen* for generate the cursors from the PNGs.
