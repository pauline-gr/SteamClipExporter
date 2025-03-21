[🇬🇧 EN version](steam_recording_EN.md) | [⬅️ Retour au guide principal](../README.md)

# 🎥 Enregistrement de clips avec Steam

Steam permet d'enregistrer des extraits de jeu de manière simple, mais les fichiers générés sont fragmentés et peu exploitables sans conversion.

---

## 🔧 Activer l'enregistrement dans Steam

1. Ouvrez Steam
2. Allez dans **Paramètres** > **En jeu**
3. Activez l'option **Enregistrement de session de jeu**
4. Choisissez une touche de raccourci pour sauvegarder les clips (par défaut pour moi c'était ctrl+F11)
5. Définissez le **dossier de destination** si vous souhaitez le modifier

## 🎬 Fonctionnalités de l'outil d'enregistrement Steam

L'outil d'enregistrement intégré à Steam permet bien plus que la simple capture de clips :

- Vous pouvez **consulter les extraits enregistrés** directement depuis l'interface de Steam.
- Il est possible de **découper les vidéos** pour ne conserver que les passages importants.
- Chaque clip peut être **partagé via un lien** avec vos amis Steam ou sur d'autres plateformes.
- Vous pouvez également **sauvegarder localement** chaque extrait pour l'utiliser ou le monter avec un autre logiciel.

Ces options sont accessibles via l'interface Steam, généralement dans la bibliothèque ou depuis la fiche du jeu concerné. 

---

## 📁 Comprendre la structure des fichiers

Chaque clip est enregistré dans un dossier préfixé par `fg_`, contenant :

- Un fichier `init-stream0.m4s` : le début de la vidéo
- Des fichiers `chunk-stream0-xxxxx.m4s` : les fragments vidéo suivants
- (Optionnel) `init-stream1.m4s` + `chunk-stream1-xxxxx.m4s` : les fragments audio si Steam en a enregistré

Exemple :

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

## ❌ Problèmes des fichiers .m4s

- Les fichiers `.m4s` ne sont pas lisibles directement dans la plupart des lecteurs vidéo
- Ils doivent être concaténés et remuxés pour devenir un fichier `.mp4` utilisable

---

## ✅ Solution

Le script de conversion fourni dans ce dépôt automatise cette opération :

- Il assemble les fragments vidéo et audio
- Il produit un fichier `.mp4` lisible immédiatement
- Il gère les dossiers automatiquement et ignore ceux déjà traités

