Radio Mod v1.0.0
================

A Minecraft mod that lets you stream and play YouTube music in-game!

INSTALLATION:
=============

1. Install Minecraft Forge 1.20.4
   - Download Forge 49.2.4 from: https://files.minecraftforge.net/net/minecraftforge/forge/
   - Run the installer and select "Install client"
   - Launch Minecraft once with the Forge profile to verify installation

2. Install Required Dependencies:
   - Double-click INSTALL_DEPENDENCIES.bat (included in this package)
   - This will check and install Python, yt-dlp, and verify ffmpeg
   - OR follow manual installation steps in TROUBLESHOOTING.md

3. Install the Mod:
   - Copy radiomod-1.0.0.jar to your Minecraft mods folder:
     Press Win+R, type: %appdata%\.minecraft\mods
   - If the 'mods' folder doesn't exist, create it
   - Paste the JAR file there

4. Launch Minecraft:
   - Select the Forge 1.20.4 profile in the launcher
   - Create or join a world
   - The Radio Mod will be loaded automatically

REQUIRED DEPENDENCIES:
======================

The mod requires these programs to work properly:

1. Python 3
   - Download: https://www.python.org/downloads/
   - IMPORTANT: Check "Add Python to PATH" during installation
   - Verify: Open Command Prompt, type "python --version"

2. yt-dlp
   - Will be installed automatically by INSTALL_DEPENDENCIES.bat
   - Or install manually: pip install yt-dlp
   - Verify: python -m yt_dlp --version

3. ffmpeg (Required for streaming)
   - Download: https://www.gyan.dev/ffmpeg/builds/
   - Download "release build" (ffmpeg-release-full.7z)
   - Extract to a folder (e.g., C:\ffmpeg)
   - Add C:\ffmpeg\bin to your System PATH
   - See TROUBLESHOOTING.md for detailed PATH instructions
   - Verify: Open new Command Prompt, type "ffmpeg -version"

USAGE:
======

1. Craft a Radio:
   - Recipe: [Check in-game recipe book or creative mode]
   - The Radio appears in the Tools & Utilities creative tab

2. Place the Radio block in your world

3. Right-click the Radio to open the music player interface

4. Enter a YouTube URL:
   - Single video: https://www.youtube.com/watch?v=VIDEO_ID
   - Or: https://music.youtube.com/watch?v=VIDEO_ID
   - Playlist: https://music.youtube.com/playlist?list=PLAYLIST_ID

5. Click "Play" to start streaming music!

CONTROLS:
=========

- Play/Pause: Start or pause playback
- Stop: Stop playback completely
- Next (▶▶): Skip to next track in playlist (playlist mode only)
- Previous (◀◀): Go back to previous track (playlist mode only)

FEATURES:
=========

- Stream YouTube music directly (no downloading required with ffmpeg)
- Support for YouTube Music playlists
- Automatic track progression in playlists
- Skip forward/backward in playlists
- Real-time audio transcoding for compatibility

TROUBLESHOOTING:
================

If you encounter issues:

1. Check TROUBLESHOOTING.md for detailed solutions

2. Common issues:
   - "yt-dlp not found" → Run INSTALL_DEPENDENCIES.bat
   - "ffmpeg not found" → Download and add to PATH (see above)
   - "Streaming failed" → Make sure ffmpeg is installed and in PATH
   - Mod not loading → Make sure you're using Forge 1.20.4 (49.2.4)

3. Check Minecraft logs:
   - Location: %appdata%\.minecraft\logs\latest.log
   - Look for errors related to "radiomod", "yt-dlp", or "ffmpeg"

4. Verify dependencies:
   - Open Command Prompt (as Administrator if needed)
   - Run: python --version
   - Run: python -m yt_dlp --version
   - Run: ffmpeg -version
   - All should show version information

SYSTEM REQUIREMENTS:
====================

- Minecraft 1.20.4
- Minecraft Forge 49.2.4 (or compatible)
- Java 17 or higher
- Windows 10/11 (Linux and macOS should work but may need different dependency installation)
- Internet connection (for streaming/downloading audio)

NOTES:
======

- The mod streams audio in real-time when ffmpeg is available
- Without ffmpeg, the mod will download audio files (slower but still works)
- Audio files are temporarily stored and automatically cleaned up
- Playlists can have up to 99 tracks (or more, depending on YouTube's limits)

SUPPORT:
========

For detailed troubleshooting, see TROUBLESHOOTING.md included in this package.

Enjoy your music in Minecraft!

