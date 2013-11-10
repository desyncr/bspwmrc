## bspwm
---

My bspwm settings and custom configurations.

## Screenshot

![Screenshot](https://github.com/desyncr/bspwmrc/blob/master/screenshot.png?raw=true)

## Setup

* Follow the installation guide of BSPWM. Basically:

  * Compile & install BSPWM
        git clone https://github.com/baskerville/bspwm.git
        cd bspwm
        make && make install

  * Compile and install SXHKD
      git clone https://github.com/baskerville/sxhkd.git
      cd sxhkd
      make && make install

  * Be sure to have the following packages installed
        - libxcb
        - xcb-util
        - xcb-util-wm

* Set up custom configuration (this repo)

        git clone http://github.com/desyncr/bspwmrc.git
        cd bspwmrc
        ln -s $PWD ~/.config/bspwm
        ln -s $PWD ~/.config/sxhkd


## Contact and Feedback

If you'd like to contribute to the project or file a bug or feature request, please visit [the project page][1].

## License

The project is licensed under the [GNU GPL v3][2] ([tldr][3]) license. Which means you're allowed to copy, edit, change, hack, use all or any part of this project *as long* as all of the changes and contributions remains under the same terms and conditions.

  [1]: https://github.com/desyncr/bspwmrc/
  [2]: http://www.gnu.org/licenses/gpl.html
  [3]: http://www.tldrlegal.com/license/gnu-general-public-license-v3-(gpl-3)
