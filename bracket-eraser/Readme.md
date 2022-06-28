# Aide à la conversion de notes prises avec Obsidian en PDF

Obsidian ne comporte pas encore de plugin permettant de convertir des notes qui comportent des références bibliographiques insérées au moyen de Zotero et du plugin Citations pour Obsidian
La conversion avec Pandoc ne permet pas de supprimer les wikiliens du texte
ce programme permet au débutant de faire fonctionner pandoc sans taper de ligne de commande
Il permet aussi de supprimer les wikiliens dans le document final.

# pré-requis

Ce programme a été conçu avec la version 5.1 de Powershell
il fonctionne avec TexLive et Pandoc 2.14
Le répertoire de notes doit contenir au moins une référence en format bibtex (.bib) et une note en markdown (.md)

# fonctionnement

- L'utilisateur sélectionne le répertoire de travail et la note qu'il souhaite convertir
- L'utilisateur sélectionne le fichier bib qui contient les références présentes dans le fichier source
- Si aucun style bibliographique n'est présent dans le répertoire de travail, un dossier csl est créé contenant les 3 styles suivants : Vancouver, Nature, IEEE
- L'utilisateur sélectionne le style de son choix parmi les trois mentionnés plus haut pour la conversion du fichier source en PDF
- S'il n'existe pas déjà, le programme crée un dossier Mypdf où la note est copiée et expurgée des wikiliens
- cette note est convertie dans ce répertoire en pdf et le fichier markdown de la copie est supprimé.
- la commande pandoc utilisée est imprimée dans un fichier texte qui porte le nom du fichier source afin d'être éventuellement modifiée et réutilisée directement avec Pandoc.
