if status is-interactive
    source ~/.config/fish/functions/others.fish
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

    echo "NOTE: ~/.local/share/nvim/lazy/noice.nvim/lua/noice/lsp/init.lua line 64 (for the definition (when shift+k on text))"
    echo "andd theme.lua in nvim folder"
end

fish_add_path /home/wein/.spicetify
