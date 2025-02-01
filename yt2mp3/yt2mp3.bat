@echo off
setlocal enabledelayedExpansion

:: Set the path to the text file containing YouTube URLs
set "URL_FILE=videos.txt"

:: Check if the file exists
if not exist "%URL_FILE%" (
    echo Error: "%URL_FILE%" not found!
    pause
    exit
)

:: Disable delayed expansion temporarily for path handling
setlocal disableDelayedExpansion
set "DIR=%~dp0"
endlocal

:: Re-enable delayed expansion for URL processing
setlocal enabledelayedExpansion

:: Ensure yt-dlp is installed
yt-dlp --version >nul 2>&1
if %errorlevel% neq 0 (
    echo Error: yt-dlp is not installed or not in PATH.
    pause
    exit
)


        :: Ensure directory path is correctly switched to the batch file location
echo off
        cd "%DIR%"


:: Read each line (URL) and process it with yt-dlp
set /a downloaded=0
for /f "usebackq delims=" %%A in ("%URL_FILE%") do (
    set "YT_URL=%%A"
    set "YT_URL=!YT_URL: =!"  :: Remove spaces

    if not "!YT_URL!"=="" (
        echo Downloading audio from: !YT_URL!

        yt-dlp -x --audio-format mp3 --audio-quality 0 -o "%%(title)s.%%(ext)s" "!YT_URL!"
        
        :: Count successful downloads
        set /a downloaded+=1
    )
)

:: Check if any files were downloaded
if %downloaded%==0 (
    echo No valid URLs found or downloads failed.
) else (
    echo All downloads completed successfully!
)

