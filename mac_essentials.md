# Essentials For a New Mac

Of course these are essentials for my specific needs, but maybe they might be useful to you.

## Apps

Work in progress. See [my last list from 2010][2010apps] in the meantime, but be warned that it is very, very out of date.

[2010apps]: http://stationinthemetro.com/2010/04/24/clean-start-with-a-new-mac

### General

- [1Password][], which has become indispensable for not only password management, but for managing all sorts of sensitive information. In my experience, syncs flawlessly with a shared database file via Dropbox, iButt, or their own service. They've recently switched to a subscription model, but it's only $2.99/mo ($36/yr) vs. their old price of $40 for the app. There's also [1Password iOS][].
- [iTerm 2][iterm] as a much more customizeable Terminal replacement. Install Oh My Zsh, themes (see main Readme), and the [Yoncé][yonce] iTerm colors for great justice.
- [Tweetbot][] for Twitter.
- [Alfred][] - Incredibly powerful app for searching, launching, text replacement, snippets, keyboard shortcuts to launch scripts, you name it. I think this does pretty much everything I used to use [Keyboard Maestro][] for, so I may have replaced it.
- [Itsycal][] - Menu bar calendar that can show just a tiny date, or display the date/time in the format of your choice. When clicked, shows this month, plus any calendars’ items.

[1Password]: https://geo.itunes.apple.com/us/app/1password-7/id1333542190?mt=12&at=10lmSY
[1Password iOS]: https://itunes.apple.com/us/app/1password/id568903335?mt=8&at=10lmSY
[iterm]: https://iterm2.com/
[yonce]: https://github.com/minamarkham/yonce
[Tweetbot]: https://geo.itunes.apple.com/us/app/tweetbot-3-for-twitter/id1384080005?mt=12&at=10lmSY
[Alfred]: https://www.alfredapp.com/
[Keyboard Maestro]: https://www.keyboardmaestro.com/
[Itsycal]: https://www.mowglii.com/itsycal/datetime.html

### Programming

- [VS Code][], the free code & text editor from Microsoft. Great jack of all trades with powerful plugins and a big community. I think I've replaced BBEdit with this.
- [PyCharm][], for a full-blown Python IDE, which I use for Python and Django scripting.
- [Growl][] and/or [Pushover][] for custom remote notifications — I cant quite decide which I like better. Best paired with [Prowl][] or [Pushover for iOS][]. They both have Python clients: [gntp][] and [python-pushover][], so they can also work for sending message from a server.
- [Github Desktop] for remote repositories of my code.

[VS Code]: https://code.visualstudio.com/
[PyCharm]: http://www.jetbrains.com/pycharm/
[Growl]: https://geo.itunes.apple.com/us/app/growl/id467939042?mt=12&at=10lmSY
[Pushover]: https://pushover.net
[Prowl]: https://itunes.apple.com/us/app/prowl-easy-push-notifications/id320876271?mt=8&at=10lmSY
[Pushover for iOS]: https://itunes.apple.com/us/app/pushover-notifications/id506088175?mt=8&at=10lmSY
[gntp]: https://github.com/kfdm/gntp
[python-pushover]: https://github.com/Thibauth/python-pushover
[Github Desktop]: https://desktop.github.com

## Fonts

- [Dank Mono][dank] is now my preferred coding font. The beautiful letter forms and nice coding ligatures really make it. £24 for personal use. 
- A free option is [DejaVu Sans Mono][dejavu] as a wider-glyph replacement for [Panic Sans][coda].
    - [A copy of the DejaVu fonts][dejavufonts] are included in this repository under [their free license][dejavulicense].
- You'll also want a [Nerd Font][] patched font to show little icons in the terminal. Currently I'm using [MesloLGS NF][] for non-ascii characters in iTerm and VS Code, but I should probably just patch Dank Mono with the Font Patcher tool (at the bottom of the page)

[dank]: https://dank.sh/
[dejavu]: https://dejavu-fonts.github.io
[coda]: https://www.panic.com/coda/
[dejavufonts]: https://github.com/bobtiki/defaults/blob/master/fonts/dejavu-fonts-ttf-2.37.tar.bz2
[dejavulicense]: https://dejavu-fonts.github.io/License.html
[Nerd Font]: https://www.nerdfonts.com/
[MesloLGS NF]: https://github.com/romkatv/dotfiles-public/tree/master/.local/share/fonts/NerdFonts

## VPN

Secure communications, especially when using public WiFi. I use [ProtonVPN][].

[ProtonVPN]: https://account.protonvpn.com/downloads
