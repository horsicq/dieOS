VERSION="1.0.0"

export PS1="\[\033[38;5;208m\]root@dieOS\[\033[00m\]:\[\033[01;34m\]\w\[\033[00m\]# "

help() {
    echo "========================================================="
    echo "                    dieOS Help Center                    "
    echo "========================================================="
    echo " [Drive & Mounting]"
    echo "   lsblk -f                : List all connected drives and filesystems"
    echo "   ntfs-3g -o ro,noexec... : Mount a Windows drive in forensic read-only mode"
    echo "   umount /path            : Unmount a previously mounted drive"
    echo ""
    echo " [File Analysis]"
    echo "   diec -d db <file>       : Scan a file with the signature database"
    echo ""
    echo " [System Configuration]"
    echo "   loadkeys <layout>       : Change keyboard layout (e.g., loadkeys de, loadkeys us)"
    echo "   clear                   : Clear the terminal screen"
    echo "   poweroff                : Safely shut down the system"
    echo "   reboot                  : Restart the system"
    echo "========================================================="
}

mkdir -p /analysis
clear
echo "========================================================="
echo "                        dieOS v${VERSION}                "
echo "   Detect It Easy OS - OS for determining types of files "
echo "========================================================="
echo " Type 'help' to see available forensic commands."
echo "========================================================="
cd /analysis