function osu-download
    if test (count $argv) -eq 0
        echo "Usage: download <beatmap_id>"
        return 1
    end
    
    set id (string match -rg "https?:\/\/osu\.ppy\.sh\/beatmapsets\/(\d+)" $argv[1])
    set url "https://assets.ppy.sh/beatmaps/$id/covers/fullsize.jpg"
    set path ~/Pictures/$id.jpg
    
    echo "Downloading beatmap cover of $id"
    curl -L $url -o $path
    
    if test $status -eq 0
        echo "Successfully downloaded in $path"
    else
        echo "Download failed"
    end
end
