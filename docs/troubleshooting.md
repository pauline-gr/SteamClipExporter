[🇬🇧 EN version](troubleshooting_EN.md) | [⬅️ Retour au guide principal](../README.md)

# 🛠 Dépannage & Foire Aux Questions

Ce document répond aux problèmes courants liés à l'utilisation du script de conversion.

---

## ❓ Le script ne se lance pas quand je double-clique

Assurez-vous que le fichier a bien l'extension `.bat` et non `.txt` ou autre. Pour cela, il faut que les extensions de fichiers soient visibles.

### Comment afficher les extensions de fichiers :
1. Ouvrez l'explorateur de fichiers
2. Cliquez sur l'onglet **Affichage** (ou **Afficher** selon votre version de Windows)
3. Cochez **Extensions de noms de fichiers**

Une fois les extensions visibles, vérifiez que le fichier se termine bien par `.bat`. L'icône peut varier selon la version de Windows (fenêtre de terminal, engrenages, etc.), mais seule l'extension compte.

---

## ❓ FFmpeg n'est pas reconnu

Le message `ffmpeg n'est pas reconnu en tant que commande interne...` signifie que FFmpeg n'est pas dans votre `PATH` système. Deux solutions :

1. Suivez le guide d'installation ici : [Installation de FFmpeg](installation_ffmpeg.md)
2. Placez simplement `ffmpeg.exe` dans le même dossier que le script `.bat`

---

## ❓ Le script ne trouve pas mes clips

- Vérifiez que les dossiers contenant les enregistrements ont bien un nom qui commence par `fg_`
- Vérifiez que le script est placé **à la racine** du dossier qui contient tous les dossiers `fg_`

---

## ❓ Les vidéos exportées n'ont pas de son

Cela peut venir de plusieurs raisons :
- Steam n'a pas enregistré l'audio pour ce clip (cela arrive parfois)
- Les fichiers audio `init-stream1.m4s` ou `chunk-stream1-*` sont absents
- Le script les a bien détectés mais la conversion a échoué (vérifiez le fichier `.mp4` avec un lecteur comme VLC)

---

## ❓ Le script affiche un message "vidéo déjà exportée" alors que je ne retrouve rien

Le script se base sur le nom du dossier pour déterminer si un fichier `.mp4` a déjà été généré. Si une vidéo a été exportée mais que vous ne la retrouvez pas, vérifiez simplement le dossier `generated_mp4`. Ne modifiez jamais les dossiers générés par Steam, cela pourrait poser problème avec le bon fonctionnement de Steam.

---

## ❓ Autre problème ?

Si votre problème ne figure pas ici, vous pouvez créer une issue sur le dépôt GitHub : [https://github.com/pauline-gr/SteamClipExporter/issues](https://github.com/pauline-gr/SteamClipExporter/issues)

---

## 🤝 Contribuer au projet

Les pull requests sont les bienvenues !
Si vous avez une idée d'amélioration ou une correction à proposer, n'hésitez pas à forker le projet et soumettre votre proposition.(https://github.com/pauline-gr/SteamClipExporter/issues)

