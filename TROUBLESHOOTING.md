# Troubleshooting: yt-dlp Not Found

If you're getting "yt-dlp is not installed" error, here's how to fix it:

## Quick Fix

The mod needs to find Python to run `python -m yt_dlp`. When Minecraft launches, it might not have Python in its PATH.

### Solution 1: Add Python to System PATH (Recommended)

1. **Find your Python installation:**
   - Open PowerShell and run: `python -c "import sys; print(sys.executable)"`
   - This will show the path to Python (e.g., `C:\Users\YourName\AppData\Local\Programs\Python\Python312\python.exe`)

2. **Add Python to System PATH:**
   - Press `Win + X` and select "System"
   - Click "Advanced system settings"
   - Click "Environment Variables"
   - Under "System variables", find and select "Path", then click "Edit"
   - Click "New" and add the Python directory (the folder containing `python.exe`)
   - Also add the Scripts folder (e.g., `C:\Users\YourName\AppData\Local\Programs\Python\Python312\Scripts`)
   - Click "OK" on all dialogs
   - **Restart your computer** (or at least restart Minecraft)

3. **Verify:**
   - Open a NEW PowerShell window (important - new window!)
   - Run: `python -m yt_dlp --version`
   - You should see a version number

### Solution 2: Use Windows Python Launcher

If you have the Windows Python launcher (`py`), the mod should find it automatically. Verify:
```powershell
py -m yt_dlp --version
```

### Solution 3: Download yt-dlp Executable

1. Download `yt-dlp.exe` from: https://github.com/yt-dlp/yt-dlp/releases
2. Place it in a folder that's in your PATH (e.g., `C:\Windows\System32`)
3. Or add the folder to your PATH (see Solution 1)

### Solution 4: Check Minecraft Logs

Check `logs/latest.log` in your Minecraft folder to see which commands the mod tried:
- Look for lines like: "yt-dlp not found. Tried: ..."
- This will show you which methods failed

## Common Issues

### "Python not found"
- Python is installed but not in PATH
- Fix: Add Python to PATH (Solution 1)

### "yt-dlp module not found"
- yt-dlp is not installed via pip
- Fix: Run `pip install yt-dlp` in PowerShell

### "Works in terminal but not in Minecraft"
- Minecraft doesn't inherit PATH from terminal
- Fix: Add Python to System PATH (Solution 1) and restart computer

## Testing

After fixing, test in a NEW PowerShell window:
```powershell
python -m yt_dlp --version
py -m yt_dlp --version
```

Both should work. Then restart Minecraft and try the radio again.

