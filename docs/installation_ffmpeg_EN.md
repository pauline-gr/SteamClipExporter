[🇫🇷 Version française](installation_ffmpeg.md) | [⬅️ Back to main guide](../README_EN.md)

# 🛠 Installing FFmpeg (Windows)

This script relies on [FFmpeg](https://ffmpeg.org/), a free and open-source tool to handle audio and video files.

---

## 1. Download FFmpeg

1. Go to the official website: [https://ffmpeg.org/download.html](https://ffmpeg.org/download.html)
2. Click on **Windows**, then choose one of the build providers (e.g. [Gyan.dev](https://www.gyan.dev/ffmpeg/builds/))
3. Download the **release full** version (example: `ffmpeg-release-full.7z`)

---

## 2. Manual installation

1. Extract the archive wherever you want (e.g. `C:\Program Files\ffmpeg`)
2. Open the `ffmpeg` folder, then `bin`
3. Make sure the file `ffmpeg.exe` is in this folder

---

## 3. Add FFmpeg to your system PATH (recommended)

1. In Windows, open the **Start menu**, type `environment variables`, and open the corresponding panel
2. Under "System variables", select the `Path` variable and click **Edit**
3. Click **New** and enter the path to the `bin` folder (e.g. `C:\Program Files\ffmpeg\bin`)
4. Click **OK** to confirm

---

## 4. Verify the installation

1. Open a Command Prompt (Windows + R > type `cmd`)
2. Run the following command:
```bat
ffmpeg -version
```
3. If FFmpeg is properly installed, the version information will be displayed

---

If you prefer not to edit your environment variables, you can simply place `ffmpeg.exe` in the same folder as the `.bat` script. The script will then be able to run it without needing the PATH.