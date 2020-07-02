<h1 align="center"> Welcome to my dotfiles </h1>

> Made by a 16 y/0

### Introduction

This is my dotfiles repository that I run for easy moving my configuration to another pc.
Of course this repository can also serve for anyone else that wants to see what kind of configuration is needed for my kind of desktop and experience

### Main points:

- `linux` only (sorry windows and mac users)
- Probably made to personal so don't expect to find some gold here
- This is something that I do for fun
- Updates are probably gonna be in this fachio: 1 month no updates and the 100 updates in a day
- There is probably going to be a lot of `broken` english here
- That is it for the points

### Quick look at the desktop

![Desktop](https://raw.githubusercontent.com/CroLinuxGamer/Photos/master/desktop.png)

### Quick jump to section

- [.config](#config)
    - [Alacritty](#alacritty)
    - [anime-downloader](#anime-downloader)
- [.ncmpcpp](#ncmpcpp)
- [.zsh](#zsh)
- [Bin](#bin)
- [Pictures](#pictures)
- [.bashrc](#bashrc)
- [.p10k.zsh](#p10k.zsh)
- [.profile](#profile)
- [.xinitrc](#xinitrc)
- [.zprofile](#zprofile)
- [.zshenv](#zshenv)
- [.zshrc](#zshrc)

### .config

My .config folder that most of my programs use.

Now I will individually explain every program that uses this folder and link their respective config and provide a screenshot.

#### [Alacritty](https://github.com/alacritty/alacritty)

`Alacritty` is the my terminal emulator of choice because it is very fast on my low spec machine.

With it's gpu support a lot of commands and cli programs are running much faster for me. The increnase in speed on my system was about 50% - 70%.

Before using I used a lot of treminal emulator like `st`, `urxvt`, `termite` and so on but only `Alacritty` made me want to come back to it.

Color scheme that I use [Material](https://github.com/alacritty/alacritty/wiki/Color-schemes#material-theme) that I found on the `Alacritty` github page and I fell in love with it.

Here is the `Alacritty` [config](.config/alacritty/alacritty.yml). To be able to use my config you need to save it in this respective path: `~/.config/alacritty/alacritty.yml`

> Here is a quick loot at my terminal color output:

![temirnal](https://raw.githubusercontent.com/CroLinuxGamer/Photos/master/terminal.png)

For more information about alacritty and configuration options checkout `Alacritty` [github](https://github.com/alacritty/alacritty) page

#### [anime-downloader](https://github.com/vn-ki/anime-downloader)

A simple commandline tool to for downloading anime from your favourite website.

But in my case I use it with another program [adl](https://github.com/RaitaroH/adl) which makes use of [trackma](https://github.com/z411/trackma) and [mpv](https://mpv.io/) to be able to watch anime from your terminal emulator.

For this combination you will need to first login into trackma with your `mal` or `anilist` account. You will also need to configure your anime-downloader config to use either your favourite or the fastest site for your first. Recommended is anime simple.

My config configured for the fastest site in my region so you will need to edit it.

Here is my [config](.config/anime-downloader/config.json). You need to save the `config` in it's respective path: `~/.config/anime-downloader/config.json`.

> A look at how it works

![adl](https://raw.githubusercontent.com/CroLinuxGamer/Photos/master/adl.gif)

### .ncmpcpp

### .zsh

### Bin

### Pictures

### .bashrc

### .p10k.zsh

### .profile

### .xinitrc

### .zprofile

### .zshenv

### .zshrc
