#/bin/bash
# wp - Set National Geographic 'picture of the day' as XFCE wallpaper
# Author : Jaseem Abid <jaseemabid@gmail.com>

# Make cache directory
dir=~/.wpoftheday
[ -d $dir ] || mkdir $dir

# CD to cache dir
cd $dir

# Delete index file if it exists
[ -e index.html ] || rm index.html

page="http://photography.nationalgeographic.com/photography/photo-of-the-day/"
wget -q  $page

# echo "Scraping the link"
link=$(cat index.html | grep "Download Wallpaper" |  grep -Po 'http.*.jpg')

# echo "Downloading the image"
wget -nvc  $link

# echo "Setting the wallpaper"
file=$(echo  $link |  grep -Po '[-\w]*.jpg')

# Set picture $file as desktop background
# 0 - Auto, 1 - Centered, 2 - Tiled, 3 - Stretched, 4 - Scaled, 5 - Zoomed

xfconf-query -c xfce4-desktop -p /backdrop/screen0/monitor0/image-path -s $file
xfconf-query -c xfce4-desktop -p /backdrop/screen0/monitor0/image-style -s 0
xfconf-query -c xfce4-desktop -p /backdrop/screen0/monitor0/image-show -s false
xfconf-query -c xfce4-desktop -p /backdrop/screen0/monitor0/image-show -s true
