#!/bin/sh

if [ ! -f "artisan" ]; then
    echo "Can't find the artisan file! Are you in the correct folder?"
    exit
fi

git clone https://github.com/NoahvdAa/PterodactylDarkThemes.git -b DarkReaderMedium_0.7.17 'temp_themeinstall'
cp temp_themeinstall/public ./
cp temp_themeinstall/resources ./

echo "Done! Be sure to set"
echo "APP_THEME=DarkReaderMedium"
echo "in .env and reload your cache (CTRL+SHIFT+R)."