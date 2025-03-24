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

Ces options sont accessibles via l'interface Steam, généralement dans la bibliothèque ou depuis la fiche du jeu concerné. Cependant il n'est possible d'exporter les vidéos qu'une par une, ce qui peut être fastidieux si vous avez de nombreux clips à traiter.

Le script de conversion fourni dans ce dépôt automatise cette opération :

- Il assemble les fragments vidéo et audio
- Il produit un fichier `.mp4` lisible immédiatement
- Il gère les dossiers automatiquement et ignore ceux déjà traités

