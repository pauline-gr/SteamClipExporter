# Convertisseur Steam Clips (.m4s → .mp4)

Ce script `.bat` vous permet de convertir automatiquement vos clips Steam en fichiers `.mp4` à l'aide de **FFmpeg**.

## 🚀 Instructions

1. **Télécharger FFmpeg**  
   Rendez-vous sur [https://ffmpeg.org/download.html](https://ffmpeg.org/download.html) et téléchargez la version adaptée à votre système (Windows).

2. **Ajouter FFmpeg au PATH système**  
   Localisez l'exécutable `ffmpeg.exe` et ajoutez son chemin à la variable d’environnement `PATH`.  
   - Astuce : Cherchez "variables d’environnement" dans le menu démarrer de Windows, puis ajoutez le chemin dans la section *Path* de vos variables utilisateur.

3. **Redémarrer le PC**  
   Cela permet de s'assurer que le système prend en compte le nouveau `PATH`.

4. **Copier le fichier `.bat`**  
   Placez le fichier `.bat` à la racine du dossier contenant vos vidéos Steam.  
   Exemple de structure (chez moi) :
   ```plaintext
   SteamVideos/
   ├── clips/
   ├── video/
   ├── timelines/
   └── gamerecording.pb
   ```

5. **Lancer le script**  
   Double-cliquez sur le fichier `.bat`. Les vidéos seront automatiquement converties dans un dossier `generated_mp4`, à l’emplacement configuré dans le script.

---

## ⚙️ Configuration avancée

Le script peut être personnalisé avec les paramètres suivants, modifiables directement en haut du fichier `.bat` :

### 1. Langue de l'interface

```bat
set "LANG=FR"
```

- `FR` : français (par défaut)  
- `EN` : anglais

### 2. Mode daltonien

```bat
set "COLORBLIND=0"
```

- `0` : couleurs normales (avec vert, orange, rouge)  
- `1` : désactive les couleurs, tous les messages s'affichent en texte simple (recommandé pour les terminaux ne gérant pas les couleurs ANSI)

---

# Steam Clips Converter (.m4s → .mp4)

This `.bat` script automatically converts your Steam clips to `.mp4` using **FFmpeg**.

## 🚀 Instructions

1. **Download FFmpeg**  
   Visit [https://ffmpeg.org/download.html](https://ffmpeg.org/download.html) and download the version for your system (Windows).

2. **Add FFmpeg to your system PATH**  
   Locate `ffmpeg.exe` and add its folder to your environment variables under `PATH`.  
   - Tip: Search for "environment variables" in the Start menu and edit the *Path* variable under your user account.

3. **Restart your PC**  
   This ensures the updated `PATH` is recognized by your system.

4. **Copy the `.bat` file**  
   Place the `.bat` file at the root of your Steam video folder.  
   Example structure (on my system):
   ```plaintext
   SteamVideos/
   ├── clips/
   ├── video/
   ├── timelines/
   └── gamerecording.pb
   ```

5. **Run the script**  
   Double-click the `.bat` file. Videos will be converted and saved into a `generated_mp4` folder, based on the output path set inside the script.

---

## ⚙️ Advanced configuration

You can customize the script via the parameters located at the top of the `.bat` file:

### 1. Interface language

```bat
set "LANG=EN"
```

- `FR`: French (default)  
- `EN`: English

### 2. Colorblind mode

```bat
set "COLORBLIND=0"
```

- `0`: default color display (green, orange, red)  
- `1`: disables colors; plain text output only (recommended for non-ANSI terminals)

---

