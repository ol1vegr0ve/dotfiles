# dotfiles
> [!NOTE]
> Backup your dotfiles.
## New Look
![Preview Image](https://raw.githubusercontent.com/sharkota/dotfiles/refs/heads/main/preview/5.png)
## Preview
![Preview Image](https://raw.githubusercontent.com/sharkota/dotfiles/refs/heads/main/preview/1.png)
![Preview Image](https://raw.githubusercontent.com/sharkota/dotfiles/refs/heads/main/preview/2.png)
![Preview Image](https://raw.githubusercontent.com/sharkota/dotfiles/refs/heads/main/preview/3.png)
![Preview Image](https://raw.githubusercontent.com/sharkota/dotfiles/refs/heads/main/preview/4.png)
## Requirements
Working Arch Install
Two brain cells
## Install
```sh
git clone https://github.com/sharkota/dotfiles.git
cd dotfiles
sh install.sh
```
The above script will give you multiple options to choose from and is reccomended.
If you are cherrypicking files then you can take them from base, desktop, etc.

### Minimal
Mostly neofetch and wal setup, also installs when choosing desktop.
Intended for systems with pre-existing desktop environment.
Sets up yay (if not installed), which will be required for other packages.
### Desktop
Installs minimal, then installs desktop packages.
Adds a custom command to your ~/.bashrc named "krice"
This command is used for managing the background and user avatar easily.
### Addons
Currently, only installs the vencord theme, not the zen theme.
The vencord installer will be ran, you can quit it if you already have vencord installed.
### Credits
The assets folder items should be named according to their author, if they are not I could not find the author.
The Vencord theme lists the author in the themes menu.