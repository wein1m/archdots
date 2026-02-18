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

    function cdd
        cd $argv && ls
    end

    function mkdird
        mkdir $argv && cd $argv
    end

    function notes
        glow $HOME/code/notes
    end

    function wth
        if contains -- $argv[2] statements statement
            echo -n "Something that"; set_color cyan; echo " performs an action but does not return a value."; set_color normal;
            echo  "It doesn't produces value";
            echo  "https://chatgpt.com/c/69877391-2068-8321-9888-b4951e52a951"
        else if contains -- $argv[2] expressions expression
            echo -n "Something that"; set_color cyan; echo " evaluates to a value."; set_color normal;
            echo  "It produces value";
            echo  "https://chatgpt.com/c/69877391-2068-8321-9888-b4951e52a951"
        else if contains -- $argv[2] libvirt network-not-active
            echo  "https://askubuntu.com/questions/1036297/cant-start-kvm-guest-network-default-is-not-active"
        else
            echo "ask your mom";
        end
    end

    abbr rifsh 'source ~/.config/fish/**/*.fish'
    # Custom colours
    cat ~/.local/state/caelestia/sequences.txt 2> /dev/null
end

fish_add_path /home/wein/.spicetify
