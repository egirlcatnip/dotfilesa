if status is-interactive

    bind \b backward-kill-word
    bind \e\[3\;5~ kill-word
    bind -k btab ''

end

set -U fish_greeting
set -Ux FZF_DEFAULT_OPTS_FILE ~/.config/fzf/fzf
set -Ux CARGO_HOME ~/.cargo

alias bash "bash --login"
alias fishrc "$EDITOR ~/.config/fish/config.fish"

set -Ux TERMINAL ptyxis



function fish_title
    set pwd (pwd)
    echo (string replace -r "^$HOME" "~" $pwd)
end

set -u STARSHIP_CONFIG
if [ $TERM = linux ]
    set -x STARSHIP_CONFIG ~/.config/starship/starship_tty.toml
    set -x EDITOR micro
    # echo tty
else
    set -x EDITOR code
    set -x STARSHIP_CONFIG ~/.config/starship/starship.toml
    # echo not_tty
end
