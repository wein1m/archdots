if status is-interactive
    # Starship custom prompt
    starship init fish | source

    # Direnv + Zoxide
    command -v direnv &> /dev/null && direnv hook fish | source
    command -v zoxide &> /dev/null && zoxide init fish --cmd cd | source

    # Better ls
    alias ls='eza --icons --group-directories-first -1'

    abbr rmdirs 'rm -rf'
    abbr icat 'kitten icat'
    abbr cd-osu 'cd ~/.wine-osu/drive_c/users/wein/AppData/Local/osu!/'

    abbr rifsh 'source ~/.config/fish/**/*.fish'
    # Custom colours
    cat ~/.local/state/caelestia/sequences.txt 2> /dev/null
end

fish_add_path /home/wein/.spicetify
