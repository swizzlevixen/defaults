# Defaults

Stuff that I use a lot when I set up a new computer, or start a new project.

## Software

See the [Mac Essentials](https://github.com/bobtiki/defaults/blob/master/mac_essentials.md) document.

## zsh

Moving to `zsh` on all Macs from here forward, since macOS is moving to it as [the default in Catalina](https://support.apple.com/en-us/HT208050), and Omni prefers it anyway. I learned a lot from [this Scripting OS X article on moving to zsh](https://scriptingosx.com/2019/06/moving-to-zsh/).

- `zshrc` goes in `/etc/`, and is executed for all users
- `.zshrc` goes in `~/`, and is for the current user only.

Might want to look at [oh-my-zsh](https://ohmyz.sh/) later, as their git plugin looks very nice, and there's lots of other plugins and themes.

## fish

[Jay Tamboli](https://twitter.com/jtaqmboli) recommended [`fish`](https://fishshell.com/) instead of `zsh`, and I acctually like it a lot. There's a theme for [`oh-my-fish`](https://github.com/oh-my-fish/oh-my-fish) that they use in their web-based demo, called [`bobthefish`](https://github.com/oh-my-fish/theme-bobthefish), and it's really nice with git integration. It uses functions for everything, including aliases, so it will take a little work to move over all of my defaults, but I'm interested in setting that up at some point.

## bash

[.bash_profile vs .bashrc](http://www.joshstaiger.org/archives/2005/07/bash_profile_vs.html)

- `.bash_profile` is executed for login shells
- `.bashrc` is executed for interactive non-login shells.
- load `.bashrc` into `.bash_profile` and put most of your customizations in `.bashrc`

### Adding to $PATH

    PATH=$PATH:~/opt/bin  # New path at end
    PATH=~/opt/bin:$PATH  # New path first

- `bash` [colors and formatting](https://misc.flogisoft.com/bash/tip_colors_and_formatting)
- [`tput`](https://www.tutorialspoint.com/unix_commands/tput.htm)

## Python

### Venv installation and setup

- [Download the latest Python](https://www.python.org/downloads/mac-osx/) (3.7.0, as of this writing) and install
- run `Update Shell Profile.command` and `Install Certificates.command`
- Use [`virtualenv`](https://pypi.org/project/virtualenv/) and [`virtualenvwrapper`](https://pypi.org/project/virtualenvwrapper/) for **every project**
- `sudo -H pip3 install --upgrade virtualenv`
- `sudo -H pip3 install --upgrade virtualenvwrapper`
- Make sure that the `.bashrc` is updated with my [default Python settings](https://github.com/bobtiki/defaults/blob/master/.bashrc)
- `cd ~/dev` and `mkproject PROJECT_NAME_HERE` to start a new venv and project

### Other Python stuff

- Python [`termcolor`](https://pypi.org/project/termcolor/) for printing colors to the terminal.
