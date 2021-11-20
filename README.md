![greetings](/Other/greetings.png)

<img alt="Visits" src="https://badges.pufler.dev/visits/ilham25/dotfiles-openbox?style=flat-square&label=&color=success&logo=GitHub&logoColor=white&labelColor=373e4d"/>
<img alt="Repo Size" src="https://github-size-badge.herokuapp.com/ilham25/dotfiles-openbox.svg"/>

![preview](/Other/preview.png)

## :snowflake: My Setup

- **WM :** openbox
- **Terminal :** urxvt
- **Shell :** zsh
- **Panel :** tint2
- **Notification :** dunst
- **App launcher :** rofi (**use v.1.7.0**)
- **File manager :** thunar

## :triangular_flag_on_post: Changelog

- New Layout
- New Wallpaper
- Change some of color scheme
- A bit change in gtk theme
- New rofi config and interface

## :art: Color Scheme

![color-scheme](/Other/colorscheme.png)

## :wrench: Installation

<details>
  <summary>Dependency, oh-my-zsh, and dotfiles installation</summary>

### :wrench: Dependency Install

<details>
  <summary>Ubuntu based distro</summary>

> **Openbox Window Manager**

```bash
sudo apt install openbox
```

> **Other Dependencies**

```bash
sudo apt install feh rsync python psmisc wireless-tools alsa-utils brightnessctl python3-psutil nitrogen dunst tint2 gsimplecal rofi lxappearance qt5ct qt5-style-plugins lxpolkit xautolock rxvt-unicode xclip scrot jq thunar thunar-archive-plugin thunar-media-tags-plugin thunar-volman ffmpegthumbnailer tumbler w3m w3m-img geany viewnior mpv mpd mpc ncmpcpp pavucontrol parcellite neofetch htop imagemagick ffmpeg playerctl xsettingsd
```

> **Picom**

- ```bash
  sudo apt install build-essential libxext-dev libxcb1-dev libxcb-damage0-dev libxcb-xfixes0-dev libxcb-shape0-dev libxcb-render-util0-dev libxcb-render0-dev libxcb-randr0-dev libxcb-composite0-dev libxcb-image0-dev libxcb-present-dev libxcb-xinerama0-dev libxcb-glx0-dev libpixman-1-dev libdbus-1-dev libconfig-dev libgl1-mesa-dev  libpcre2-dev  libevdev-dev uthash-dev libev-dev libpcre3-dev libx11-xcb-dev ninja-build meson
  ```

- ```bash
  git clone https://github.com/yshui/picom.git && cd picom/
  ```

- ```bash
  git submodule update --init --recursive
  ```

- ```bash
  meson --buildtype=release . build
  ```

- ```bash
  ninja -C build
  ```

- ```bash
  ninja -C build install
  ```

> **psuinfo - Network & CPU Monitor, RAM Usage**

- ```bash
  git clone https://github.com/nwg-piotr/psuinfo.git && cd psuinfo/
  ```

- ```bash
  sudo cp -r {psuinfo,icons} /usr/bin
  ```

> **networkmanager_dmenu install**

- ```bash
  git clone https://github.com/firecat53/networkmanager-dmenu.git && cd networkmanager-dmenu/
  ```

- ```bash
  sudo cp networkmanager_dmenu /usr/bin
  ```

</details>

<details>
  <summary>Arch based distro</summary>

> :exclamation: For AUR helper, im using **yay**

> :page_with_curl: **Openbox Windows Manager**

```bash
sudo pacman -S openbox
```

> :sound: **Audio**

```bash
sudo pacman -S alsa-utils pulseaudio pulseaudio-alsa
```

> :high_brightness: **Brightness**

```bash
yay -S brightnessctl
```

> :chart_with_upwards_trend: **Network & CPU Monitor, RAM Usage**

```bash
yay -S psuinfo
```

> :signal_strength: **Wireless Tools**

```bash
sudo pacman -S wireless_tools
```

> :hammer: **Other utility (panel, notification, terminal, file manager, etc)**

```bash
yay -S dunst tint2 gsimplecal rofi feh lxappearance qt5ct qt5-styleplugins lxsession xautolock rxvt-unicode-truecolor-wide-glyphs xclip scrot thunar thunar-archive-plugin thunar-media-tags-plugin thunar-volman lxsession tumbler jq w3m geany nano vim viewnior pavucontrol parcellite neofetch htop picom-git gtk2-perl xfce4-power-manager imagemagick playerctl networkmanager-dmenu xsettingsd
```

</details>

After dependencies is installed, you can go further to **[dotfiles installation](#wrench-dotfiles-install)** below, or if you want to install oh-my-zsh, you can install it first.

### :diamonds: Oh-my-zsh and zsh (optional)

<details>
  <summary>Click for detail</summary>

> **zsh install**

- Debian based

  ```bash
  sudo apt install zsh
  ```

- Arch based

  ```bash
  sudo pacman -S zsh
  ```

> **oh-my-zsh install**

```bash
chsh -s `which zsh`
sh -c "$(curl -fsSL https://raw.githubusercontent.com/ohmyzsh/ohmyzsh/master/tools/install.sh)" &&
git clone https://github.com/zsh-users/zsh-syntax-highlighting.git ${ZSH_CUSTOM:-~/.oh-my-zsh/custom}/plugins/zsh-syntax-highlighting
git clone https://github.com/zsh-users/zsh-autosuggestions.git ${ZSH_CUSTOM:-~/.oh-my-zsh/custom}/plugins/zsh-autosuggestions
git clone https://github.com/zsh-users/zsh-completions.git ${ZSH_CUSTOM:=~/.oh-my-zsh/custom}/plugins/zsh-completions
```

</details>

### :wrench: Dotfiles Install

<details>
  <summary>Click for detail</summary>

> :file_folder: **General Config**

Clone this repository

```bash
git clone https://github.com/ilham25/dotfiles-openbox
```

Copy dotfiles to home directory

```bash
pushd dotfiles-openbox/ && \
  bash -c 'cp -v -r {.*,*} ~/' && \
popd
```

Remove unnecessary file (README.md, LICENSE, and git directory)

```bash
rm ~/README.md && rm ~/LICENSE && rm -rf ~/.git
```

> :nut_and_bolt: **Icons**

```bash
cd ~/.icons/

tar -Jxvf oomox-aesthetic-light.tar.xz && tar -Jxvf oomox-aesthetic-dark.tar.xz

sudo cp -r {oomox-aesthetic-light,oomox-aesthetic-dark} /usr/share/icons/

rm -r ~/.icons/{oomox-aesthetic-light,oomox-aesthetic-dark,*.tar.xz} # Delete unnecessary files
```

> :bulb: **Refresh font cache**

```bash
fc-cache -rv
```

> :sunny: **Add user to video group**

This step is required so you can control the brightness using keybind.

```bash
sudo gpasswd -a $USER video
```

Please logout and login again so the effect will occur.

Congratulation! You have installed **aether dotfiles** :clap::clap:, next step is you can learn **[the keybinds](#black_square_button-keybinds)** that i use in this theme. For the first time using it maybe you need some practice, but as time go on, you will get used of it and doesn't have trouble again!:v:

</details>

</details>

## :black_square_button: Keybinds

<details>
  <summary>Click for detail</summary>

| Key                                    | Action                                  |
| -------------------------------------- | --------------------------------------- |
| <kbd>Mod + C                           | Close Windows                           |
| <kbd>Mod + Shift + Space               | Switch between normal/maximized         |
| <kbd>Mod + Left Click (hold)           | Move Windows                            |
| <kbd>Mod + Right Click (hold)          | Resize Windows                          |
| <kbd>Mod + 1/2/3/4/5/6/7/8/9/0         | Change Workspace                        |
| <kbd>Mod + Shift + 1/2/3/4/5/6/7/8/9/0 | Move active windows to workspace number |
| <kbd>Mod + E                           | Open file manager                       |
| <kbd>Mod + R                           | App launcher                            |
| <kbd>Mod + L                           | Lock Screen                             |
| <kbd>Mod + Return                      | Open terminal                           |
| <kbd>Mod + Shift + E                   | Power Menu                              |
| <kbd>Mod + Shift + C                   | WM Restart                              |
| <kbd>Mod + Print                       | Screenshot Menu                         |

</details>

## :gear: User Configuration

> Save and change your theme to apply effect

**:fireworks: Power Menu Command**
If you are not using systemd init, you can custom the power menu command.

> Open configuration file

```bash
nano ~/.aether-corevar
```

Change the configuration below

```cfg
...
40 POWEROFF="poweroff" # systemd default
41 REBOOT="reboot" # systemd default
42 LOCK="dm-tool lock"
43 SLEEP="suspend" # systemd default
...
```

## :heart: Credits

- [Openbox Wiki](http://openbox.org/wiki/Help:Contents)
- [@owl4ce](https://github.com/owl4ce/)
- [@nwg-piotr - psuinfo](https://github.com/nwg-piotr)
- [@firecat53 - networkmanager-dmenu](https://github.com/firecat53)
- [@duangdeong - Dotfiles Tester](https://github.com/duangdeong)
- [@zulfikarmuzakir - Tester](https://gitlab.com/zulfikarmuzakir)
- [ZorinOS theme](https://github.com/ZorinOS/zorin-desktop-themes)
