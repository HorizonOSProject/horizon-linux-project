#!/bin/bash

# Horizon Package Manager - hpm
# Version 0.1-alpha

COMMAND=$1
ARGUMENT=$2

case "$COMMAND" in
    it)
        sudo apt install -y "$ARGUMENT"
        ;;
    rm)
        sudo apt remove -y "$ARGUMENT"
        ;;
    pr)
        sudo apt purge -y "$ARGUMENT"
        ;;
    sr)
        apt search "$ARGUMENT"
        ;;
    ls)
        apt list --installed
        ;;
    ug)
        sudo apt upgrade -y
        ;;
    ft)
        sudo apt update
        ;;
    cf)
        sudo dpkg-reconfigure "$ARGUMENT"
        ;;
    it-de)
        echo "Installing desktop environment: $ARGUMENT"
        sudo apt install -y "$ARGUMENT"
        ;;
    it-tc)
        echo "Installing toolset: $ARGUMENT"
        # Platzhalter für toolset-spezifische Installationen
        ;;
    *)
        echo "Horizon Package Manager (hpm)"
        echo "Usage:"
        echo "  hpm it <pkg>        Install package"
        echo "  hpm rm <pkg>        Remove package"
        echo "  hpm pr <pkg>        Purge package"
        echo "  hpm sr <pkg>        Search for package"
        echo "  hpm ls              List installed packages"
        echo "  hpm ug              Upgrade system"
        echo "  hpm ft              Fetch package lists"
        echo "  hpm cf <pkg>        Configure package"
        echo "  hpm it-de <de>      Install desktop environment"
        echo "  hpm it-tc <tool>    Install toolset"
        ;;
esac
