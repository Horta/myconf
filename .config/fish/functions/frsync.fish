function frsync
    rsync -aHXxv --numeric-ids --progress -e "ssh -T -c aes128-cbc -o Compression=no -x" $argv[1] $argv[2]
end

