if status --is-interactive
   neofetch
end

set -g fish_user_paths "/usr/local/sbin" $fish_user_paths
status --is-interactive; and source (nodenv init -|psub)

source /usr/local/opt/asdf/libexec/asdf.fish

# local::libを使用する設定
eval (perl -I$HOME/.perl5/lib/perl5 -Mlocal::lib=$HOME/.perl5)

# 環境変数の設定
set -x PERL_MM_OPT "INSTALL_BASE=$HOME/.perl5"
set -x PERL_MB_OPT "--install_base $HOME/.perl5"
set -x PERL5LIB "$HOME/.perl5/lib/perl5:$PERL5LIB"
set -x PATH "$HOME/.perl5/bin:$PATH"
