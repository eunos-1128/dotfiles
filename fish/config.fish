if status --is-interactive
   fastfetch
end

# set PATH so it includes user's private bin if it exists
set -g fish_user_paths "/usr/local/sbin" "$HOME/.pixi/bin" $fish_user_paths

# asdf
source /usr/local/opt/asdf/libexec/asdf.fish

# >>> conda initialize >>>
# !! Contents within this block are managed by 'conda init' !!
if test -f /usr/local/Caskroom/miniforge/base/bin/conda
    eval /usr/local/Caskroom/miniforge/base/bin/conda "shell.fish" "hook" $argv | source
else
    if test -f "/usr/local/Caskroom/miniforge/base/etc/fish/conf.d/conda.fish"
        . "/usr/local/Caskroom/miniforge/base/etc/fish/conf.d/conda.fish"
    else
        set -x PATH "/usr/local/Caskroom/miniforge/base/bin" $PATH
    end
end

if test -f "/usr/local/Caskroom/miniforge/base/etc/fish/conf.d/mamba.fish"
    source "/usr/local/Caskroom/miniforge/base/etc/fish/conf.d/mamba.fish"
end
# <<< conda initialize <<<

# Added by Windsurf
fish_add_path /Users/masa_u/.codeium/windsurf/bin
set -gx VOLTA_HOME "$HOME/.volta"
set -gx PATH "$VOLTA_HOME/bin" $PATH

# pnpm
set -gx PNPM_HOME "/Users/masa_u/Library/pnpm"
if not string match -q -- $PNPM_HOME $PATH
  set -gx PATH "$PNPM_HOME" $PATH
end
# pnpm end

# perl local::lib
eval (perl -I$HOME/.perl5/lib/perl5 -Mlocal::lib=$HOME/.perl5)
set -x PERL_MM_OPT "INSTALL_BASE=$HOME/.perl5"
set -x PERL_MB_OPT "--install_base $HOME/.perl5"
set -x PERL5LIB "$HOME/.perl5/lib/perl5:$PERL5LIB"
set -x PATH "$HOME/.perl5/bin:$PATH"
