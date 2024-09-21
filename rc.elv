set-env PATH "/home/linuxbrew/.linuxbrew/bin:/home/linuxbrew/.linuxbrew:/sbin:/usr/local/sbin:/usr/local/bin:/usr/local/games:/usr/sbin:/usr/bin:/usr/games:/sbin:/bin"
set-env HOME "/home/uenom"

use builtin

# prompt theme
use github.com/zzamboni/elvish-themes/chain
chain:init

# Homebrew
sh -c '/home/linuxbrew/.linuxbrew/bin/brew shellenv > /dev/null 2>&1'

# rye
sh -c ". /home/uenom/.rye/env"

screenfetch

# ls aliases
fn ls {|@a| e:ls --color=auto $@a }
fn ll {|@a| ls -l $@a }
fn la {|@a| ls -a $@a }
fn l {|@a| ls -CF $@a }
