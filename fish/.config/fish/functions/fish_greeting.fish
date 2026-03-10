# function fish_greeting
#     echo -ne '\x1b[38;5;16m'  # Set colour to primary
#     echo '     ______           __          __  _       '
#     echo '    / ____/___ ____  / /__  _____/ /_(_)___ _ '
#     echo '   / /   / __ `/ _ \/ / _ \/ ___/ __/ / __ `/ '
#     echo '  / /___/ /_/ /  __/ /  __(__  ) /_/ / /_/ /  '
#     echo '  \____/\__,_/\___/_/\___/____/\__/_/\__,_/   '
#     set_color normal
#     fastfetch --key-padding-left 5
# end
function fish_greeting
    echo -ne '\x1b[38;5;16m'  # Set colour to primary
    echo '    _      ___________  __'
    echo '   | | /| / / __/  _/ |/ /'
    echo '   | |/ |/ / _/_/ //    / '
    echo '   |__/|__/___/___/_/|_/  '
    set_color normal
    fastfetch --key-padding-left 5
end
# function fish_greeting
#     echo -ne '\x1b[38;5;16m'  # Set colour to primary
#     echo '      ___    ____  ________  __'
#     echo '     /   |  / __ \/ ____/ / / /'
#     echo '    / /| | / /_/ / /   / /_/ / '
#     echo '   / ___ |/ _, _/ /___/ __  /  '
#     echo '  /_/  |_/_/ |_|\____/_/ /_/   '
#     set_color normal
#     fastfetch --key-padding-left 5
# end
