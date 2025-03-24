[🇫🇷 Version française](steam_recording.md) | [⬅️ Back to main guide](../README_EN.md)

# 🎥 Recording Clips with Steam

Steam makes it easy to record gameplay clips, but the generated files are fragmented and not readily usable without conversion.

---

## 🔧 Enabling Recording in Steam

1. Open Steam
2. Go to **Settings** > **In-Game**
3. Enable the **Game Session Recording** option
4. Choose a shortcut key to save clips (default was Ctrl+F11 for me)
5. Set the **destination folder** if you want to customize where clips are saved

---

## 🎬 Steam Recording Features

Steam's built-in recording tool offers more than just clip capture:

- You can **view recorded clips** directly from the Steam interface
- You can **trim videos** to keep only the key moments
- Clips can be **shared via links** with friends or on other platforms
- You can also **save clips locally** for editing or external use

These features are accessible through Steam's interface, usually from the Library or the game page. However, exporting videos one by one can be tedious if you have many clips to process.

The conversion script provided in this repository automates the process:

- It merges video and audio fragments
- It produces an immediately playable `.mp4` file
- It processes folders automatically and skips already converted clips

