[🇫🇷 Version française](troubleshooting.md) | [⬅️ Back to main guide](../README_EN.md)

# 🛠 Troubleshooting & FAQ

This document addresses common issues related to using the conversion script.

---

## ❓ The script doesn't run when I double-click it

Make sure the file has a `.bat` extension and not `.txt` or something else. To confirm that, you need to enable file extensions in Windows.

### How to show file extensions:
1. Open File Explorer
2. Click on the **View** tab (or **Display**, depending on your Windows version)
3. Check **File name extensions**

Once extensions are visible, make sure the file ends with `.bat`. The icon may vary (terminal window, gears, etc.), but only the extension matters.

---

## ❓ FFmpeg is not recognized

If you see the message `ffmpeg is not recognized as an internal or external command`, it means FFmpeg is not in your system's `PATH`. You have two options:

1. Follow the installation guide here: [Installing FFmpeg](installation_ffmpeg_EN.md)
2. Simply place `ffmpeg.exe` in the same folder as the `.bat` script

---

## ❓ The script doesn't find my clips

- Make sure the folders containing the recordings start with `fg_`
- Make sure the script is placed **at the root** of the folder containing all the `fg_` directories

---

## ❓ Exported videos have no sound

This can happen for several reasons:
- Steam didn’t record audio for this clip (it happens occasionally)
- Audio files like `init-stream1.m4s` or `chunk-stream1-*` are missing
- The script detected the files, but the conversion failed (check the resulting `.mp4` in a player like VLC)

---

## ❓ The script says "already exported" but I don't see the file

The script uses the folder name to determine whether a `.mp4` file was already generated. If a video was exported but you can't find it, check the `generated_mp4` folder.
**Do not rename or move the original Steam folders**, as this may interfere with Steam's operation.

---

## ❓ Something else?

If your issue is not listed here, feel free to open an issue on GitHub: [https://github.com/pauline-gr/SteamClipExporter/issues](https://github.com/pauline-gr/SteamClipExporter/issues)

---

## 🤝 Contributing

Pull requests are welcome!
If you have an idea for an improvement or a fix to propose, feel free to fork the project and submit a PR:
[https://github.com/pauline-gr/SteamClipExporter](https://github.com/pauline-gr/SteamClipExporter)

