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

These features are accessible through Steam's interface, usually from the Library or the game page.

---

## 📁 Understanding the File Structure

Each clip is saved in a folder prefixed with `fg_`, containing:

- `init-stream0.m4s`: the beginning of the video
- `chunk-stream0-xxxxx.m4s`: video fragments
- (Optional) `init-stream1.m4s` + `chunk-stream1-xxxxx.m4s`: audio fragments if Steam recorded them

Example:

```
fg_1234567890\
├── init-stream0.m4s
├── chunk-stream0-00001.m4s
├── chunk-stream0-00002.m4s
├── ...
├── init-stream1.m4s
├── chunk-stream1-00001.m4s
└── ...
```

---

## ❌ The .m4s File Problem

- `.m4s` files are not directly playable in most video players
- They need to be concatenated and remuxed into a usable `.mp4` file

---

## ✅ The Solution

The conversion script provided in this repository automates the process:

- It merges video and audio fragments
- It produces an immediately playable `.mp4` file
- It processes folders automatically and skips already converted clips

