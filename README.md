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

- Python [`termcolor`](https://pypi.org/project/termcolor/)
