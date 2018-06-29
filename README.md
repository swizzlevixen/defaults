# Defaults

Stuff that I use a lot when I set up a new computer, or start a new project.

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
