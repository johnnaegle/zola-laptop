# Overview

This will install a number of tools / extensions / alias that the author has found useful for
front end development at zola.

The software installed here is opinionated.

### Installed Software

- [cloc](https://github.com/AlDanial/cloc) - Counts lines of code
- [graphviz](https://graphviz.org/) - Open source graph visualization software
- [telnet](https://formulae.brew.sh/formula/telnet) - Useful command for testing if a port is open on a server
- [thefuck](https://formulae.brew.sh/formula/thefuck) - Programmatically correct mistyped console commands
- [watchman](https://facebook.github.io/watchman/) - watch files and record when they change, trigger actions when matching files change
- [gist](https://formulae.brew.sh/formula/gist) - Command-line utility for uploading Gists
- [gh](https://formulae.brew.sh/formula/gh) - GitHub command-line tool
- [itermocil](https://github.com/TomAnthony/itermocil) - Setup pre-configured layouts of windows and panes in iTerm2
- [oh-my-zsh](https://ohmyz.sh/) - framework for managing your Zsh configuration
- [npm-merge-drirver](https://www.npmjs.com/package/npm-merge-driver) - automatic merging of lockfiles

### Installed Fonts

- [font-fira-code](https://github.com/tonsky/FiraCode)

### Installed Configuration

- [git commit message template](https://github.com/johnnaegle/zola-laptop/blob/main/configs/.gitmessage) for all repositores
- [malware and adware blockgin](https://github.com/StevenBlack/hosts) - Block malware/ads/trackers at the DNS level (except for segment)
- Set screenshots folder to ~/Documents/Screenshots
- Clone second web-marketplace folder for builds
- Setup git hooks in web-marketplace directories
- Itermocil configs for running webs and service (`itermocil web-staging` may be your best friend)

### Github extensions

These are extensions for the [Github command line tool](https://formulae.brew.sh/formula/gh):

- [gh branch](https://github.com/mislav/gh-branch) - Displays an interactive branch switcher that lists local branches
- [gh prs](https://github.com/dlvhdr/gh-prs) - extension to display a dashboard of PRs
- [gh clean-branches](https://github.com/davidraviv/gh-clean-branches) - Safely deletes local branches with no upstream and no un-pushed commits

### Git Config

- use opendiff as mergetool
- set editor as vs code
- use rebase when pulling

### ZSH Extensions

- Start new iterm sessions in `~/web/web-marketplace`
- itermocil autocomplete
- enable [thefuck](https://formulae.brew.sh/formula/thefuck)
- enable a badge in iterm windows (used with itermocil configs to label a window)
- add ssh identities on terminal start

#### [Aliases](https://github.com/johnnaegle/zola-laptop/blob/main/oh-my-zsh/custom/aliases.zsh)

- Alias `build` for building `web-marketplace` in a different directory and deploying to stage
- Alias `v` for changing to the vagrant directory and starting vagrant
- Alias `wtf-ssh` for kicking ssh
- Alias `restart-web` fpor restarting `web-marketplace` against staging

# Installation

- Perform the standard zola laptop setup first, vagrant optional
- Run install.sh

```zsh
git clone git@github.com:johnnaegle/zola-laptop.git
cd zola-laptop
install.sh
```

# Other software

This list of other software has been found useful by the other

- [Intellij Community Edition](https://www.jetbrains.com/idea/downloada/#section=mac)
- [VMWare Fusion 12 Player](https://www.vmware.com/products/fusion.html)
- [Virtual Machines](https://modern.ie)
- [pgadmin 4](https://www.pgadmin.org/download/pgadmin-4-macos/)
- Firefox
- Chrome
- Chrome Canary
- Microsoft Edge
- [SizeUp](https://www.irradiatedsoftware.com/downloads/?file=SizeUp.zip)
- Gifox
- [Karabiner-Elements](https://karabiner-elements.pqrs.org/docs/getting-started/installation/) - disables laptop keyboard when an external keyboard is plugged in to prevent cat attacks
- [Android Studio](https://developer.android.com/studio)
- [Spotify](https://www.spotify.com/us/download/other/)
- [Sourcetree](https://www.sourcetreeapp.com/)

# Other stuff

These are configuration notes for actions not performed by this script that are helpful

- Show all file extensions in finder
- [Turn on setting sync in vscode](https://code.visualstudio.com/docs/editor/settings-sync)
