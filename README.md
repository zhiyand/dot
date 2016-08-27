# dot
dot files repo

## Setup Gnome Terminal (Ubuntu 14.04)

> mkdir ~/.solarized
> cd ~/.solarized

"http://www.webupd8.org/2011/04/solarized-must-have-color-paletter-for.html

> git clone https://github.com/seebi/dircolors-solarized.git
> eval \`dircolors ~/.solarized/dircolors-solarized/dircolors.256dark\`
> ln -s ~/.solarized/dircolors-solarized/dircolors.256dark ~/.dircolors

Add the following to .zshrc

> d=~/.dircolors
> test -r $d && eval "$(dircolors $d)"

> git clone https://github.com/sigurdga/gnome-terminal-colors-solarized.git
> ./gnome-terminal-colors-solarized/install.sh
