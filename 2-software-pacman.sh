#!/usr/bin/env bash
#-------------------------------------------------------------------------
#      _          _    __  __      _   _
#     /_\  _ _ __| |_ |  \/  |__ _| |_(_)__
#    / _ \| '_/ _| ' \| |\/| / _` |  _| / _|
#   /_/ \_\_| \__|_||_|_|  |_\__,_|\__|_\__|
#  Arch Linux Post Install Setup and Config
#-------------------------------------------------------------------------

echo -e "\nINSTALLING SOFTWARE\n"

PKGS=(


    # TERMINAL UTILITIES --------------------------------------------------

    'bash-completion'       # Tab completion for Bash
    'bleachbit'             # File deletion utility
    'cronie'                # cron jobs
    'curl'                  # Remote content retrieval
    'file-roller'           # Archive utility
    'gtop'                  # System monitoring via terminal
    'gufw'                  # Firewall manager
    'hardinfo'              # Hardware info app
    'htop'                  # Process viewer
    'neofetch'              # Shows system info when you launch terminal
    'ntp'                   # Network Time Protocol to set time via network.
    'openssh'               # SSH connectivity tools
    'p7zip'                 # 7z compression program
    'rsync'                 # Remote file sync utility
    'terminus-font'         # Font package with some bigger fonts for login terminal
    'powertop'	    	    # Utilizes Programs for Better power management 
    'tlp'                   # Advanced laptop power management
    'unrar'                 # RAR compression program
    'unzip'                 # Zip compression program
    'wget'                  # Remote content retrieval
    'terminator'            # Terminal emulator
    'vim'                   # Terminal Editor
    'zenity'                # Display graphical dialog boxes via shell scripts
    'zip'                   # Zip compression program
    'zsh'                   # ZSH shell
    'zsh-completions'       # Tab completion for ZSH

    # DISK UTILITIES ------------------------------------------------------

    'android-tools'         # ADB for Android
    'android-file-transfer' # Android File Transfer
    'autofs'                # Auto-mounter
    'btrfs-progs'           # BTRFS Support
    'dosfstools'            # DOS Support
    'exfat-utils'           # Mount exFat drives
    'gparted'               # Disk utility
    'gvfs-mtp'              # Read MTP Connected Systems
    'gvfs-smb'              # More File System Stuff
    'ntfs-3g'               # Open source implementation of NTFS file system
    'parted'                # Disk utility
    'smartmontools'         # Disk Monitoring
    'smbclient'             # SMB Connection 
    'xfsprogs'              # XFS Support

    # GENERAL UTILITIES ---------------------------------------------------

    'flameshot'             # Screenshots
    'freerdp'               # RDP Connections
    'libvncserver'          # VNC Connections
    'pcmanfm'              # Filesystem browser
    'ranger'			#CLI file manager
    'remmina'               # Remote Connection
    'veracrypt'             # Disc encryption utility

    # DEVELOPMENT ---------------------------------------------------------

    'neovim-nightly'                 # Text editor
    'clang'                 # C Lang compiler
    'cmake'                 # Cross-platform open-source make system
    'vscodium-bin'                  # Visual Studio Code
    'electron'              # Cross-platform development using Javascript
    'git'                   # Version control system
    'gcc'                   # C/C++ compiler
    'glibc'                 # C libraries
    'nodejs'                # Javascript runtime environment
    'npm'                   # Node package manager
    'python'                # Scripting language
    'yarn'                  # Dependency management (Hyper needs this)

    # MEDIA ---------------------------------------------------------------

    'mpv'             # Video player
    
    # GRAPHICS AND DESIGN -------------------------------------------------
    
    'sxiv'                  #image viewer
    'grabc'                 # Colorpicker
    'gimp'                  # GNU Image Manipulation Program
    'inkscape'			#Vector Manipulation

    # PRODUCTIVITY --------------------------------------------------------

    'hunspell'              # Spellcheck libraries
    'hunspell-en'           # English spellcheck library
    'mupdf'                  #	PDF viewer for latex 
    'zathura'			# PDF Viewer
    'zathura-pdf-mupdf'		# Extension for zathura to integerate with mupdf

)

for PKG in "${PKGS[@]}"; do
    echo "INSTALLING: ${PKG}"
    sudo pacman -S "$PKG" --noconfirm --needed
done

echo -e "\nDone!\n"
