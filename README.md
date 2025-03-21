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


## 🎥 Enregistrement des vidéos sur Steam

Steam offre une fonctionnalité intégrée pour enregistrer vos sessions de jeu. Voici comment l'utiliser et configurer les paramètres associés :

### Activation de l'enregistrement en arrière-plan

1. **Ouvrez Steam** et accédez aux *Paramètres*.
2. Naviguez vers la section *Diffusion et captures*.
3. Sous *Enregistrement de parties*, sélectionnez l'option *Enregistrer en arrière-plan*. Cela permet à Steam d'enregistrer automatiquement vos sessions de jeu. :contentReference[oaicite:0]{index=0}

### Démarrer et arrêter l'enregistrement

- **Raccourci par défaut** : Pour commencer et arrêter l'enregistrement manuellement, utilisez le raccourci clavier `Win + Alt + R`. :contentReference[oaicite:1]{index=1}

### Accéder aux enregistrements et les éditer

- **Accès rapide** : Pendant une session de jeu, appuyez sur `Maj + Tab` pour ouvrir l'overlay Steam. Cela vous permet d'accéder rapidement à vos enregistrements et captures d'écran. :contentReference[oaicite:2]{index=2}

- **Découpage des enregistrements** : Steam offre des outils intégrés pour éditer vos enregistrements. Depuis l'overlay, vous pouvez sélectionner une vidéo et utiliser les options disponibles pour la découper selon vos besoins.

### Définir le dossier de stockage des enregistrements

1. **Ouvrez Steam** et allez dans les *Paramètres*.
2. Cliquez sur *Diffusion et captures*.
3. Sous *Dossier de capture de jeu*, définissez l'emplacement où vous souhaitez que Steam enregistre vos vidéos. Assurez-vous de choisir un dossier facilement accessible.

En configurant ces paramètres, vous pourrez gérer efficacement l'enregistrement de vos sessions de jeu et les éditer directement depuis l'interface Steam.


--- 

## 🎥 Recording Videos on Steam

Steam provides a built-in feature for recording your gaming sessions. Here’s how to use it and configure the relevant settings:

### Enabling Background Recording

1. **Open Steam** and go to *Settings*.
2. Navigate to the *Broadcasting & Captures* section.
3. Under *Game Recording*, enable *Record in the background*. This allows Steam to automatically record your gaming sessions. ([help.steampowered.com](https://help.steampowered.com/en/faqs/view/23B7-49AD-4A28-9590?utm_source=chatgpt.com))

### Starting and Stopping a Recording

- **Default Shortcut**: To manually start and stop recording, use the `Win + Alt + R` shortcut. ([easeus.com](https://www.easeus.com/screen-recording-tips/how-to-record-a-video-on-steam.html?utm_source=chatgpt.com))

### Accessing and Editing Recordings

- **Quick Access**: During a game session, press `Shift + Tab` to open the Steam overlay. This allows you to quickly access your recordings and screenshots. ([help.steampowered.com](https://help.steampowered.com/en/faqs/view/3978-072C-18DF-FBF9?utm_source=chatgpt.com))

- **Trimming Recordings**: Steam provides built-in tools for editing your recordings. From the overlay, you can select a video and use the available options to trim it as needed.

### Setting the Recording Folder

1. **Open Steam** and go to *Settings*.
2. Click on *Broadcasting & Captures*.
3. Under *Game Capture Folder*, set the location where Steam will save your videos. Make sure to choose a folder that’s easy to access.

By configuring these settings, you can efficiently manage your game recordings and edit them directly from the Steam interface.

