# Justin's dotfiles

* This was obviously forked from Paul Irish's repo, but it has been modified semi-significantly to use tooling and settings I'm comfortable with.
* This repo might be bare compared to other, but this is because I've removed the things I'm not familiar with. Upon becoming familiar, I may re-add them.
## Setup
#### installing & using

* fork this to your own acct
* clone that repo
* read and run parts of `setup-a-new-machine.sh`
* read and run `symlink-setup.sh`
  * git config needs attention, read the notes.
* use it. yay!

#### maintenance

* commit/push changes you want.
* you can also hypothetically cherry-pick commits from me and mathias and our fork ecosystem.

#### shell

Paul recently switched to fish, but I still use bash.

## my favorite parts.

### [`.aliases`](https://github.com/paulirish/dotfiles/blob/master/.aliases) and [`.functions`](https://github.com/paulirish/dotfiles/blob/master/.functions)

So many goodies.

### The "readline config" (`.inputrc`)
Basically it makes typing into the prompt amazing.

* tab like crazy for autocompletion that doesnt suck. tab all the things. srsly.
* no more <tab><tab> that says "Display all 1745 possibilities? (y or n)" YAY
* type `cat <uparrow>` to see your previous `cat`s and use them.
* case insensitivity.
* tab all the livelong day.


## overview of files

####  Automatic config
* `.vimrc`, `.vim` - vim config, obv.
* `.inputrc` - behavior of the actual prompt line
* `.tmux.conf` - tmux config based off the one by thoughtbot (https://github.com/thoughtbot/dotfiles/blob/master/tmux.conf)

#### shell environment
* `.aliases`
* `.bash_profile`
* `.bash_prompt`
* `.bashrc`
* `.exports`
* `.functions`
* `.extra` - not included, explained below

#### manual run
* `setup-a-new-machine.sh` - random apps i need installed
* `symlink-setup.sh`  - sets up symlinks for all dotfiles and vim config.
* `.osx` - run on a fresh osx setup
* `brew.sh` & `brew-cask.sh` - homebrew initialization

#### git
* `.git`
* `.gitattributes`
* `.gitconfig` - so many aliases...
* `.gitignore`


### `.extra` for your private configuration

There will be items that don't belong to be committed to a git repo, because either 1) it shoudn't be the same across your machines or 2) it shouldn't be in a git repo. Kick it off like this:

`touch ~/.extra && $EDITOR $_`

I have some EXPORTS, my PATH construction, and a few aliases for ssh'ing into my servers in there.

I don't know how other folks manage their $PATH, but this is how I do mine:

```shell
# The top-most paths override here
PATH=/opt/local/bin
PATH=$PATH:/opt/local/sbin
PATH=$PATH:/bin
PATH=$PATH:~/.rvm/bin
PATH=$PATH:~/code/git-friendly
# ...

export PATH
```


### Sensible OS X defaults

Mathias's repo is the canonical for this, but you should probably run his or mine after reviewing it.

```bash
./.osx
```

### `~/bin`

One-off binaries that aren't via an npm global or homebrew. [git open](https://github.com/paulirish/git-open), [wifi-password](https://github.com/rauchg/wifi-password), [coloredlogcat](https://developer.sinnerschrader-mobile.com/colored-logcat-reloaded/507/), [git-overwritten](https://github.com/mislav/dotfiles/blob/master/bin/git-overwritten), and `subl` for Sublime Text.

### Syntax highlighting for these files

If you edit this stuff, install [Dotfiles Syntax Highlighting](https://github.com/mattbanks/dotfiles-syntax-highlighting-st2) via [Package Control](http://wbond.net/sublime_packages/package_control)
