#!/bin/sh

if [ ! -f "artisan" ]; then
    echo "Can't find the artisan file! Are you in the correct folder?"
    exit
fi

git clone https://github.com/NoahvdAa/PterodactylDarkThemes.git -b DarkReaderDark_0.7.18 'temp_themeinstall'
cp -R temp_themeinstall/public/* ./public/
cp -R temp_themeinstall/resources/* ./resources/

echo "Done! Be sure to set"
echo "APP_THEME=DarkReaderDark"
echo "in .env and reload your cache (CTRL+SHIFT+R)."

echo "Refreshing pterodactyl theme cache..."
php artisan theme:refresh-cache

echo "Cleaning up temp files..."
rm -rf temp_themeinstall/