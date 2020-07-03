<h1 align="center"> Welcome to my dotfiles </h1>

> Made by a 16 y/0

### Introduction

This is my dotfiles repository that I run for easy moving my configuration to another pc.
Of course this repository can also serve for anyone else that wants to see what kind of configuration is needed for my kind of desktop and experience

### Main points:

- `linux` only (sorry windows and mac users).
- Probably made too personal so don't expect to find some gold here.
- This is something that I do for fun.
- Updates are probably gonna be in this fashion: 1 month no updates and then 100 updates in a day.
- There is probably going to be a lot of `broken` english here.
- That is it for the points.

### Quick look at the desktop

![Desktop](https://raw.githubusercontent.com/CroLinuxGamer/Photos/master/desktop.png)

### Quick jump to section

- [.config](#config)
    - [Alacritty](#alacritty)
    - [anime-downloader](#anime-downloader)
    - [bspwm](#bspwm)
    - [dunst](#dunst)
    - [lf](#lf)
    - [mpd](#mpd)
    - [nvim](#neovim)
    - [picom](#picom)
    - [polybar](#polybar)
    - [rofi](#rofi)
    - [sxhkd](#sxhkd)
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

## .config

My .config folder that most of my programs use.

Now I will individually explain every program that uses this folder and link their respective config and provide a screenshot.

### [Alacritty](https://github.com/alacritty/alacritty)

`Alacritty` is the my terminal emulator of choice because it is very fast on my low spec machine.

With it's gpu support a lot of commands and cli programs are running much faster for me. The increnase in speed on my system was about 50% - 70%.

Before using I used a lot of treminal emulator like `st`, `urxvt`, `termite` and so on but only `Alacritty` made me want to come back to it.

Color scheme that I use is [Material](https://github.com/alacritty/alacritty/wiki/Color-schemes#material-theme) that I found on the `Alacritty` github page and I fell in love with it.

Here is the `Alacritty` [config](.config/alacritty/alacritty.yml). To be able to use my config you need to save it in this respective path: `~/.config/alacritty/alacritty.yml`

> Here is a quick loot at my terminal color output:

![temirnal](https://raw.githubusercontent.com/CroLinuxGamer/Photos/master/terminal.png)

For more information about alacritty and configuration options checkout `Alacritty` [github](https://github.com/alacritty/alacritty) page

### [anime-downloader](https://github.com/vn-ki/anime-downloader)

A simple commandline tool to for downloading anime from your favourite website.

But in my case I use it with another program [adl](https://github.com/RaitaroH/adl) which makes use of [trackma](https://github.com/z411/trackma) and [mpv](https://mpv.io/) to be able to watch anime from your terminal emulator.

For this combination you will need to first login into trackma with your `mal` or `anilist` account. You will also need to configure your `anime-downloader` config to use either your favourite or the fastest site for your first. Animesimple is recommended.

I configured my config for the fastest site in my region so you will need to edit it for your own region.

Here is my [config](.config/anime-downloader/config.json). You need to save the `config` in it's respective path: `~/.config/anime-downloader/config.json`.

> A look at how it works

![adl](https://raw.githubusercontent.com/CroLinuxGamer/Photos/master/adl.gif)

### [bspwm](https://github.com/baskerville/bspwm)

For my wm I use `bspwm` because it is just a wm. I tried `i3`, `xnomad`, `openbox` and more and in the end `bspwm` is for me because it is just a wm so that means that it only works with windows which make it more modular with differrent programs. And any other functionality is easily configurable with scripts because config for `bspwm` is any programming languange you wan't.

For `bspwm` I don't really have any special config, only thing worth mentioning is just controling floating windows with my mouse.

Rest are mostly scripts which I will name later on.

Here is the [config](.config/bspwm/bspwmrc). Config need's to be placed in it's respective path: `~/.config/bspwm/bspwmrc`

> sorry for not providing a screenshot ^-^

### [dunst](https://github.com/dunst-project/dunst)

I have a really regular `dunst` config so I don't think that there is anything special worth mentioning.

I use `dunst` only because it is very lightweight and easy to configure.

Here is my [config](.config/dunst/dunstrc)

You also need to pictures for my config to work. [Critical](.config/dunst/critical.png) and [normal](.config/dunst/normal.png).

Config and pictures need to be placed in `~/.config/dunst/` directory.

> dunst notification screenshot

![dunst](https://raw.githubusercontent.com/CroLinuxGamer/Photos/master/dunst.png)

### [lf](https://github.com/gokcehan/lf)

You must have though't that it is going to be `ranger` but no it is `lf`.

I use lf because it is faster and you can program most of the functoins in the config so it makes `lf` more mudular than `ranger`.

I have quite a bit of custom functions so you can just take what you need from them.

I also have a custom preview script about which I will talk about later.

Here is [config](.config/lf/lfrc). To use my `config` you need it's respective path: ` ~/.config/lf/lfrc`.

> lf screenshot

![lf](https://raw.githubusercontent.com/CroLinuxGamer/Photos/master/lf.png)

### [mpd](https://www.musicpd.org/)

Yes i use mpd for my music. I love mpd because I can play song on my phone while it is on my pc trought network with mpd.

Here my [config](.config/mpd/mpd.conf) (very basic yo can use it right away). You need to place config in it's respective place: `~/.config/mpd/mpd.conf`

### [Neovim](https://github.com/neovim/neovim)

For information about my neovim config I will create a special repo at a later date.

> Neovim cpp sceenshot

![neovim](https://raw.githubusercontent.com/CroLinuxGamer/Photos/master/neovim.png)

### [picom](https://github.com/ibhagwan/picom)

For my compositor I use picom or more correctly ibhagwan's fork.

I use his fork because it has rounded corners and dual_kawase blur and I love them ;).

Here is my [config](.config/picom/picom.conf) (it is heavilly configured so you will also need time to configure it to your needs). You need to place the config in it's respective path: `~/.config/picom/picom.conf`

> I think that there is no need for a screenshot beacuse you have already seen enough

### [polybar](https://github.com/polybar/polybar)

For my system bar I use polybar. In terms of configuration I will make a dedicated repo so that I can better explain some of the modules and confguration.

> I think that there is also no need for polybar screenshot because there already is enough of them


### [rofi](https://github.com/davatorium/rofi)

Rofi is my program launcher only because it is really customizable.
That is the only reason.

Here is the [config](.config/rofi/config) and here is also the [theme](.config/rofi/theme.rasi). You need to place them in `~/.config/rofi` directory.

> rofi screenshot

![rofi](https://raw.githubusercontent.com/CroLinuxGamer/Photos/master/rofi.png)

### [sxhkd](https://github.com/baskerville/sxhkd)

For my shortcut daemon I use sxhkd because it is has very modular and intuinitive syntax.

In term of my `config` it has comments for everything so it is pretty easy to understand.

Here is my [config](.config/sxhkd/sxhkdrc). You need to save config in it's respective path: `~/.config/sxhkd/sxhkdrc`
> no screenshot sorry :(

## .ncmpcpp

This is my ncmpcpp configuration folder. I use ncmpcpp because it work really good and I can configure it's look with the configuration file (there is also a built in virtualizer).

Here is my [config](.ncmpcpp/config). Config goes into `~/.ncmpcpp` folder.

> ncmpcpp screenshot

![ncmpcpp](https://raw.githubusercontent.com/CroLinuxGamer/Photos/master/ncmpcpp.png)

## .zsh

As you can see I use zsh as my shell and love it because of it modularity.

In this forlder a store my folder which has all my aliases in it.

Here is the [config](.zsh/aliasrc). If you wan't use to my aliases you need to make your zshrc load aliasrc file on your own.

> here is an example

```
[ -f "$HOME/.zsh/aliasrc" ] && source "$HOME/.zsh/aliasrc"
```

You can change the path where you save them but i like it this way.

## Bin

This is my folder that I use for all my scripts.

For all scripts I will make a repository so that I can explain them in more detail so you will need to wait for it a bit.

## Pictures

Just a folder where I have my wallpaper saved

> I believe there is no need for it to be here

## .bashrc

A simple bash config just so that it is there ;)

Here is [bashrc](.bashrc). You need to save the file in your home directory.

> no bash here

## .p10k.zsh

My configuration for powerlevel10k zsh theme that I love.

I made it's configuration to look similar to `pure` zsh theme.

Here is [config](.p10k.zsh). You need to save the file in your home directory.

> you can see the theme clearly in terminal screenshot and in the gif

## .profile

A very besic .profile that just enables mangohud.

Here is [config](.profile). You need to save it in your home folder.

> no need for screenshot

## .xinitrc

I use startx for starting my x server so ofcourse that I have `xinitrc`.

I lauch quite a bit of programs with is, so here is the list:

- dunst
- mpd
- xsetroot
- xrandr
- transmission-daemon
- polkit
- bspwm

Here is [config](.xinitrc). You need to save the file in your home folder.

> no screenshot

## .zprofile

From here I launch startx on boot so you need it if you are going to use startx with my config.

Here is [config](.zprofile). You need to save the file in your home folder.

> no screenshot here either

## .zshenv

This is where I save all my enviromental variables and export my custom folder to path to be able to use my scrpts like regular commands terminal.

I also export lf icons here so that it can use a lot of different icons.

Here is [config](.zshenv). You need to save the file in your home folder.

> no screenshot

## .zshrc

My zsh config that I configured completely to my liking.

You will need a couple of zsh plugins so i will list them here:

- zsh-syntax-highlighting.
- zsh-history-substring-search
- zsh-theme-powerlevel10k

And it is preferred that you save my or your aliases in `~/.zsh/aliasrc` file with my zsh config.

Here is [config](.zshrc). You need to save the file in your home folder.

> no screenshot
