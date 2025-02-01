# yt2mp3
## MSDos CMD bat file to batch download Youtube videos to MP3 using YT-DLP and FFMPEG.

### Brief overview of what needs to be done.
<ul>
<li>Install YT-DLP and FFMPEG, YT-DLP does the video download and FFMPEG makes it an MP3.</li>
<li>Extract your Youtube cookies to mimic your logged in Youtube session by adding any browser extension that can export cookies in NetScape format, in my exmaple, Get cookies.txt LOCALLY, when on Youtube.com export your cookies</li>
<li>Download the MSDos batch file <b>yt2mp3.bat</b> and <b>videos.txt</b></li>
</ul>

### Start by installing YT-DL and FFMPEG, the easiest way to do this in windows is by using MSDos.

Open a CMD window, goto **START** button, type **CMD** and choose to run **COMMAND PROMPT** in MSDos window type

`winget install yt-dlp`

![image](https://github.com/user-attachments/assets/86bd0734-2da1-4b11-a094-0b60605f22b4)

This will trigger two installs, **type Y to agree to the T&C's** of the software packages.

**Close the COMMAND PROMPT window** as it will not know of the new environment path update until it's re-opened.

### Exporting your existing Youtube cookies into cookies.txt
Nowadays Youtube has locked itself down so that you need to be logged in to see a video.
We need to export the cookies of your own personal login session, install a browser extension like "Get cookies.txt Locally".

Use it to export cookies.txt and place it together with yt2mp3.bat and videos.txt otherwise you could get this error:

![image](https://github.com/user-attachments/assets/181b8234-a8d0-4ca0-9f77-b1c9e5711606)


### Download the batch file yt2mp3.bat and videos.txt
Download the two files:
<ul>
  <li> The batch file that will orchastrate the process now the tools are installed, [yt2mp3.bat] (https://github.com/xuan69/yt2mp3/blob/main/yt2mp3/yt2mp3.bat)</li>
  <li> and a blank file called [videos.txt] (https://github.com/xuan69/yt2mp3/blob/main/yt2mp3/videos.txt), this is where you need add the video links to download, one video per line.</li>
</ul>  

**yt2mp3.bat** when executed will look for **videos.txt** and **cookies.txt**


## Later you might want to update the tools, to do so in DOS, type in

`winget upgrade yt-dlp`


## If you want manually download a video open a CMD window and type

`yt-dlp https://www.youtube.com/watch?v=xxxxxxxxxx`

## if you want to download a single MP3 manually, in DOS type

`yt-dlp -x --audio-format mp3 --audio-quality 0 https://www.youtube.com/watch?v=xxxxxxxxxx`

Replace https://www.youtube.com/watch?v=xxxxxxxxxx with your video link.


Njoi





