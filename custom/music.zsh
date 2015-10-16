# This function is borrowed from here:
# https://github.com/exogen/dotfiles/blob/730fb8e2b72b2fc3aa3d90b889874bb5195e1d07/.profile#L65

function music {
    # Get the best audio, convert it to MP3, and save it to the ~/Music directory.
    cd ~/Music
    youtube-dl --default-search=ytsearch: \
               --restrict-filenames \
               --format=bestaudio \
               --extract-audio \
               --audio-format=mp3 \
               --audio-quality=1 "$*"
    cd -
}
