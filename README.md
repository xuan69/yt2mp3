# yt2mp3
Dos CMD bat file to batch download Youtube videos to MP3 using YT-DLP and FFMPEG.

We will need to install YT-DL and FFMPEG, the easiest way to do this in windows is by using MSDos.

Open a CMD window, goto start button, type CMD and choose to **run COMMAND PROMPT** in MSDos window type

`winget install yt-dlp`

![image](https://github.com/user-attachments/assets/86bd0734-2da1-4b11-a094-0b60605f22b4)

This will trigger two installs, type Y to agree to the T&C's of the software packages.

**Close the COMMAND PROMPT window** as it will not know of a environment path update until it's re-opened. that wont happen until it's run 

Download the two files, one the batch file that will orchastrate the process, **[yt2mp3.bat](https://github.com/xuan69/yt2mp3/blob/main/yt2mp3/yt2mp3.bat)**, and a blank file called **[videos.txt](https://github.com/xuan69/yt2mp3/blob/main/yt2mp3/videos.txt)**, this is where you need add the video links to download, one per line.

**yt2mp3.bat** when executed will look for **videos.txt** and take all the Youtube URL links in this file and download them as MP3.

Later you might want to update the tools, to do so in DOS type in

`winget upgrade yt-dlp`

If you want manually download a video open a CMD window and type

`yt-dlp https://www.youtube.com/watch?v=xxxxxxxxxx`

or if you want to download a single MP3 manually, in DOS type

`yt-dlp -x --audio-format mp3 --audio-quality 0 https://www.youtube.com/watch?v=xxxxxxxxxx`

Njoi





