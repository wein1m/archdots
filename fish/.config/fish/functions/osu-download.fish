function osu-download
    if test (count $argv) -eq 0
        set_color magenta
        echo "What? you want me to download a ghost beatmap?.. give atleast one beatmap url.. bad bunny."
        set_color normal
        echo ""
        echo "Download osu! beatmap cover."
        echo "Usage: osu-download <beatmap_id|beatmap_url>"
        return 1
    end
    
    set id (string match -rg "https?:\/\/osu\.ppy\.sh\/beatmapsets\/(\d+)" $argv[1])
    set url "https://assets.ppy.sh/beatmaps/$id/covers/fullsize.jpg"
    set path ~/Pictures/$id.jpg
    
    if test "$id" = ""
        set_color magenta
        echo "❌ What's that, $argv[1]? That's not a valid flag, silly."
        set_color normal
        echo ""
        echo "Download osu! beatmap cover."
        echo "Usage: osu-download <beatmap_id|beatmap_url>"
        return 1
    end

    echo "Downloading beatmap cover of $argv[1]..."
    curl -L $url -o $path
    
    if test $status -eq 0
        echo "Successfully $argv[1] downloaded in $path"
    else
        echo "Download failed"
    end
end
