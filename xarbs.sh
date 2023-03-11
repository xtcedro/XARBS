#!/bin/sh

# Xtcedro's Auto Rice Boostrapping Script(XARBS)
# by Pedro Dominguez <linuxnoobie405@outlook.com>
# License: GNU GPLv3

### OPTIONS AND VARIABLES ###

dotfilesrepo=""
progsfile=""
repobranch="main"
export TERM=ansi

### Functions ###

installpkg() {
	apt-get install -y "$1" >/dev/null 2>&1
}

error() {
	# Log to stderr and exit with failure.
	printf "%s\n" "$1" >&2
	exit 1
}

welcomemsg() {
	dialog --title "Welcome!" \
		--msgbox "Welcome to Luke's Auto-Rice Bootstrapping Script!\\n\\nThis script will automatically install a fully-featured Linux desktop, which I use as my main machine.\\n\\n-Luke" 10 60

	dialog --title "Important Note!" --yes-label "All ready!" \
		--no-label "Return..." \
		--yesno "Be sure the computer you are using has current updates and refreshed package keyrings.\\n\\nIf it does not, the installation of some programs might fail." 8 70
}
