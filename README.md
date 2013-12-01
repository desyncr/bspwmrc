## bspwm
---

My bspwm settings and custom configurations.

## Screenshot

![Screenshot](https://github.com/desyncr/bspwmrc/blob/master/screenshot.png?raw=true)

## Setup

* Follow the [installation guide](https://github.com/windelicato/dotfiles/wiki/bspwm-for-dummies) of BSPWM. Basically:

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

                sxhkd &
                  exec bspwm
                
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

    * Topbar depends on dzen and twmnc for notifications.

    * Statusbar depends on conky and dzen to display info

## Contact and Feedback

If you'd like to contribute to the project or file a bug or feature request, please visit [the project page][1].

## License

The project is licensed under the [GNU GPL v3][2] ([tldr][3]) license. Which means you're allowed to copy, edit, change, hack, use all or any part of this project *as long* as all of the changes and contributions remains under the same terms and conditions.

  [1]: https://github.com/desyncr/bspwmrc/
  [2]: http://www.gnu.org/licenses/gpl.html
  [3]: http://www.tldrlegal.com/license/gnu-general-public-license-v3-(gpl-3)
