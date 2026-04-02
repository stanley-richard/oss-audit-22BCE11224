#!/bin/bash
# =============================================================
# Script 2: FOSS Package Inspector
# Author: [Your Name] | Roll: [Your Roll Number]
# Course: Open Source Software | VITyarthi
# Description: Checks if Firefox is installed, displays version
#              and license info, and prints a philosophy note
#              about the package using a case statement.
# =============================================================

# --- Define the package to inspect ---
PACKAGE="firefox"   # Our chosen software for this audit

echo "============================================================"
echo "         FOSS PACKAGE INSPECTOR — $PACKAGE                 "
echo "============================================================"
echo ""

# --- Check if the package is installed using if-then-else ---
if command -v dpkg &>/dev/null; then
    # Debian/Ubuntu-based: use dpkg to check
    if dpkg -l "$PACKAGE" &>/dev/null; then
        echo "  [✔] $PACKAGE is INSTALLED on this system."
        echo ""
        echo "  --- Package Details ---"
        dpkg -s "$PACKAGE" | grep -E 'Version|Status|Maintainer|Homepage'
    else
        echo "  [✘] $PACKAGE is NOT installed."
        echo "  To install, run: sudo apt install firefox"
        exit 1
    fi

elif command -v rpm &>/dev/null; then
    # RPM-based (Fedora/CentOS/RHEL): use rpm -qi
    if rpm -q "$PACKAGE" &>/dev/null; then
        echo "  [✔] $PACKAGE is INSTALLED on this system."
        echo ""
        echo "  --- Package Details ---"
        rpm -qi "$PACKAGE" | grep -E 'Version|License|Summary|URL'
    else
        echo "  [✘] $PACKAGE is NOT installed."
        echo "  To install, run: sudo dnf install firefox"
        exit 1
    fi

else
    # Fallback: check the firefox binary directly
    if command -v firefox &>/dev/null; then
        echo "  [✔] Firefox is INSTALLED (detected via binary)."
    else
        echo "  Firefox not found. Install it from mozilla.org"
        exit 1
    fi
fi

echo ""
echo "  --- Installed Version ---"
firefox --version 2>&1   # Print exact Firefox version

echo ""
echo "  --- Firefox Executable Location ---"
which firefox            # Show where Firefox binary lives

echo ""
echo "  --- Open Source Philosophy Note ---"

# --- Case statement: philosophy note based on package name ---
case $PACKAGE in
    firefox)
        echo "  Firefox: When Internet Explorer dominated 95% of the"
        echo "  browser market in 2002, a group of Mozilla developers"
        echo "  feared the web was becoming a closed, proprietary"
        echo "  platform. They built Firefox to prove that a nonprofit,"
        echo "  community-driven browser could compete — and win."
        echo "  Today Firefox defends the open web against big tech."
        ;;
    git)
        echo "  Git: Born in 2005 when Linus lost access to BitKeeper."
        echo "  Built in 10 days — open source at its best."
        ;;
    python3 | python)
        echo "  Python: A language shaped entirely by its community."
        echo "  PSF License ensures it stays free and accessible."
        ;;
    httpd | apache2)
        echo "  Apache: The open web server powering ~30% of websites."
        ;;
    vlc)
        echo "  VLC: Built by French students — plays anything, freely."
        ;;
    *)
        echo "  $PACKAGE: An open-source tool that the world depends on."
        ;;
esac

echo ""
echo "============================================================"
