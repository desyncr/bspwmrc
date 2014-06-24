## bspwm
---

My bspwm settings and custom configurations.

## Screenshot

![Screenshot](https://github.com/desyncr/bspwmrc/blob/master/screenshot.png?raw=true)

## Setup

* Follow BSPWM's [installation guide](https://github.com/windelicato/dotfiles/wiki/bspwm-for-dummies). Basically:

  - Compile and install BSPWM

          git clone https://github.com/baskerville/bspwm.git
          cd bspwm
          make && make install

  - Compile and install SXHKD

          git clone https://github.com/baskerville/sxhkd.git
          cd sxhkd
          make && make install

  - Update your system to integrate the changes:

    - Open up `~/.xinitrc` and add the following to the bottom:

            sxhkd & exec bspwm

    - Make .xinitrc executable
    
            chmod +x ~/.xinitrc

  - Create an entry for your login manager, if any:
      - Make the file `/usr/share/xsessions/bspwm.desktop` and add the following to it:


              [Desktop Entry]
              Encoding=UTF-8
              Name=BSPWM
              Comment=Binary Space Partitioning Window Manager
              Exec=xinitrc
              Type=XSession

      - Link your .xinitrc to an executable file in your path

              ln -s ~/.xinitrc /usr/bin/xinitrc

  * Be sure to have the following packages installed

          libxcb
          xcb-util
          xcb-util-wm

    Other dependencies include:

        libxft-dev
        libx11-dev

* Set up custom configuration (this repo)

        git clone http://github.com/desyncr/bspwmrc.git
        cd bspwmrc

        mv ~/.config/bspwm ~/.config/bspwm.$(date +%s) && \
          ln -s $PWD ~/.config/bspwm

        mv ~/.config/sxhkd ~/.config/sxhkd.$(date +%s) && \
          ln -s $PWD ~/.config/sxhkd

* If you want to use Compton configure the path to it on ``init``:

        compton=~/.compton/

* Other dependencies

    * Some features like `preset` and so on depends on the following tools:
       * xdo: https://github.com/baskerville/xdo
       * unclutter: https://wiki.archlinux.org/index.php/Unclutter
       * feh: http://feh.finalrewind.org/
       * dmenu: http://tools.suckless.org/dmenu/

    * Topbar depends on dzen and dunst for notifications. Also xtitle and clock.
        * dunst: http://github.com/knopwob/dunst
        * dzen: http://github.com/robm/dzen
        * xtitle: http://github.com/baskerville/xtitle
        * clock: http://github.com/baskerville/sutils

    * Statusbar depends on conky and dzen to display info.

## Keybindings
* General
    * `Ctrl + Esc`: Reload sxhkd configuration
    * `Alt + w`: Close current window
    * `Alt + f`: Full screen current window
    * `Alt + s`: Float current window
    * `Alt + Tab`: Focus next window
    * `Alt + {h,j,k,l}`: Focus h,j,k,l window
    * `Alt + {1,2,3,4,...}`: Go to the {n} desktop
    * `Alt + backtick`: Go to the next occupied desktop
    * `Alt + Shift + backtick`: Go to the previous occupied desktop
    * `Alt + Shift + 1`: Go to the prev monitor
    * `Alt + Shift + 2`: Go to the next monitor

* Launching applications

    * `Ctrl + Enter`: gnome-terminal
    * `Ctrl + Shift + Enter`: Floating gnome-terminal
    * `Ctrl + Space`: show status bar
    * `Super + Space`: dmenu (Escape to hide it)
    * `Super + Shift + Space`: dmenu to switch between aplications
    * `Super + v`: Vimprobable (web browser)
    * `Super + s`: PhpStorm (PHP IDE)
    * `Super + shift + s`: SublimeText
    * `Super + c`: Chromium
    * `Super + f`: Firefox
    * `Super + n`: Nautilus
    * `Super + r`: Ranger
    * `Super + Print`: Take screenshot
    * `Super + l`: Switch keyboard layout

* Moving windows 
    * `Alt + Ctrl + f`: Center-focus window
    * `Alt + Ctrl + {h,j,k,l}`: Move (reposition) currently focused window
    * `Alt + Ctrl + {1,2,3,4,...}`: Move currently focused window to the {n} desktop
    * `Alt + Shift + {h,j,k,l}`: Create a new window on the given spot (`Alt + Space` to cancel)
    * `Ctrl + Shift + {h,l}`: Move window to the other monitor
    * `Super + Ctrl + {h,j,k,l}`: Move window position (float)

        
* Hiding windows
    * `Super + u`: Hide currently focused window
    * `Super + Alt + u`: Unhide last hidden window (it's a stack)
         
* Resizing windows
    * `Super + Shift + {h,j,k,l}`: Change (increase/decrease) window height/width
    * `Super + Shift + 1`: Preset position 1 (top right)
    * `Super + Shift + 2`: Preset position 2 (bottom right)
    * `Super + Shift + 3`: Preset position 2 (vertical left)
    * `Super + Shift + 4`: Preset position 2 (small bottom right)
    * `Super + plus/minus/equal/0`: Increase/decrease/restore/remove windows gap
     
## Feedback

If you'd like to contribute to the project or file a bug or feature request, please visit [the project page][1].

## License

The project is licensed under the [GNU GPL v3][2] ([tldr][3]) license. Which means you're allowed to copy, edit, change, hack, use all or any part of this project *as long* as all of the changes and contributions remains under the same terms and conditions.

  [1]: https://github.com/desyncr/bspwmrc/
  [2]: http://www.gnu.org/licenses/gpl.html
  [3]: http://www.tldrlegal.com/license/gnu-general-public-license-v3-(gpl-3)
