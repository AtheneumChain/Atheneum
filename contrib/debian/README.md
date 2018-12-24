
Debian
====================
This directory contains files used to package atheneumd/atheneum-qt
for Debian-based Linux systems. If you compile atheneumd/atheneum-qt yourself, there are some useful files here.

## atheneum: URI support ##


atheneum-qt.desktop  (Gnome / Open Desktop)
To install:

	sudo desktop-file-install atheneum-qt.desktop
	sudo update-desktop-database

If you build yourself, you will either need to modify the paths in
the .desktop file or copy or symlink your atheneumqt binary to `/usr/bin`
and the `../../share/pixmaps/atheneum128.png` to `/usr/share/pixmaps`

atheneum-qt.protocol (KDE)

