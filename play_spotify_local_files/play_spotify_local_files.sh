# Funcionó el 5 de julio de 2016 con Ubuntu 16.04 y Spotify versión 1.0.28.89.gf959d4ce
# Salió de https://community.spotify.com/t5/Help-Desktop-Linux-Windows-Web/Linux-Local-files-do-not-play-on-Ubuntu-16-04-SOLVED/m-p/1343831/highlight/false#M157144

sudo apt install ubuntu-restricted-extras ffmpeg libavcodec-extra libavcodec-extra57 libavutil55 libavformat57 zenity -y
cd spotify_libraries/ # libavformat57 libavcodec-extra57 libavcodec-extra libavutil55 no se instalaron, pero así lo dejé
sudo cp lib* /usr/lib/x86_64-linux-gnu/
sudo ln -frs /usr/lib/x86_64-linux-gnu/libavutil.so.52.6.100 /usr/lib/x86_64-linux-gnu/libavutil.so.52
sudo ln -frs /usr/lib/x86_64-linux-gnu/libavformat.so.54.36.100 /usr/lib/x86_64-linux-gnu/libavformat.so.54
sudo ln -frs /usr/lib/x86_64-linux-gnu/libavcodec.so.54.71.100 /usr/lib/x86_64-linux-gnu/libavcodec.so.54
sudo ldconfig
