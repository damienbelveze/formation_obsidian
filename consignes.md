---
title: Prenez des notes de manière plus efficace avec Obsidian en vous initiant au langage markdown
subtitle: Consignes à suivre
author: Damien Belvèze
date: 21/09/2021
---


# 1. tour de table

Qui êtes vous ? qu'est-ce que vous pensez qu'Obsidian peut vous apporter ?

# 2. objectifs

Obsidian permet de gérer des notes, des notes de lecture.

- l'un des objectifs de cette session est d'apprendre à s'en servir pour prendre des notes
- l'autre objectif est de s'initier au *plain text* et à la syntaxe markdown.
- enfin on terminera en parlant de pandoc et de l'écriture scientifique (comportant des références bibliographiques notamment)
- Zotero et LaTeX sont libres et gratuits. Obsidian n'est pas libre mais il fonctionne bien avec les deux premiers. L'un des objectifs de la session est de vous faire prendre conscience de travailler avec des formats ouverts et interopérables.

# 3. A propos de l'atelier

Vous avez reçu un mail vous invitant à télécharger les logiciels suivants sur votre machine :

- [Obsidian](https://obsidian.md)
- [Pandoc](https://pandoc.org)
- [Zotero](https://www.zotero.org)

Pandoc est un convertisseur universel de documents. Grâce à ce logiciel, qui ne dispose pas d'interface graphique mais s'exécute en ligne de commandes, vous allez pouvoir convertir des fichiers d'un format à l'autre (par exemple du format markdown en format open document ou inversement)
Si vous souhaitez convertir une note en PDF, vous pouvez soit utiliser le convertisseur intégré d'Obsidian (assez limité), soit charger une version de LaTeX qui permettra à Pandoc de prendre en charge différents éléments de mise en page, dont l'insertion de références bibliographiques depuis Zotero.

Si vous n'êtes pas habitués à exécuter des programmes en ligne de commande, Pandoc constituera une bonne initiation !

## 3.1 Accéder au support en ligne sur github

Aller sur le [répertoire](https://github.com/damienbelveze/formation_obsidian)

cloner le fichier avec git ou bien si vous n'utilisez pas git, aller sur Code > Download zip
Télécharger l'archive sur le bureau, extraire les fichiers.

## 3.2 Liste des fichiers et des dossiers dans le support

- bracket eraser (dossier contenant un exécutable, le script de cet exécutable et une instruction (fichier REad.me))
- images (dossier contenant quelques images)
- references (dossier vide)
- batonnage_depeches (fichier odt)
- consignes (ce fichier, en markdown)
- consignes (le même fichier mais en PDF)
- google_news (fichier odt)
- krishna_bharat (fichier odt)
- methode_zettelkasten (fichier markdown)
- tableau (fichier ods)
- mode d'emploi d'Obsidian (fichier markdown)

# 4. création du coffre

aller dans Obsidian
Créer et nommer un coffre avec le nom premier_coffre
comme chemin pour créer le coffre, indiquer le bureau.

Notez que vous disposez par défaut déjà d'un coffre (vault) : obsidian help qui contient l'aide d'utilisation du logiciel.
Vous pouvez créer autant de coffres que vous souhaitez (y compris des coffres sur des clouds) et passer facilement de l'un à l'autre.

# 5. Import des documents utiles pour la séance

Le dossier formation_obsidian que vous avez chargé sur le bureau comporte les fichiers utiles pour la séance.
Faire un glisser-déposer de ces fichiers depuis formation_obsidian vers nouveau_coffre.

**Dans le coffre *nouveau_coffre*, Obsidian ne vous permet de voir que certains types de fichiers, lesquels ?**

- fichiers en .md (markdown) et en .pdf. Les fichiers en format open document ne peuvent être ouverts.

Obsidian est un éditeur de texte en markdown, on peut y rédiger également du texte dans différents langages d'édition ou de programmation, mais ce n'est pas un traitement de texte comme Word ou LibreOffice.

## 5.1 Lire un diaporama sur Obsidian

Le document methode_zettelkasten est en réalité un diaporama.
Dans la structure du texte, chaque diapositive est séparé par \-\-\-
Pour le lire ce diaporama, il faut activer un plugin coeur d'Obsidian : le plugin Diapositives (mettre en *On*)
Brève revue des autres plugins "Coeur" (core plugins) disponibles.
Mettre en *on* également le plugin *template*

Il existe un nombre de plugins considérable qui sont développés par la communauté des utilisateurs d'Obsidian. Ces plugins sont dits "communautaires"
Pour avoir accès aux plugins communautaires, il faut désactiver le mode sans échec puis parcourir la liste des plugins communautaires avec celui qu'on recherche : 

### installer le plugin *advanced slides*

chercher le plugin "advanced slides"
activer le plugin dans la liste des plugins communautaires installés (une étape qu'on oublie souvent)
choisir un thème pour son diaporama : 
en haut du document ajouter un entête (frontmatter) : 

\-\-\-
 *spécifications*
\-\-\-

un frontmatter est un ensemble d'informations portant sur la manière dont le fichier de notes doit être traité ou bien ce qu'il contient. Ces informations sont rédigées selon un format de métadonnées (YAML) et peuvent être dissociées des fichiers qui vont être traités selon ces informations (dans notre cas, on reste sur un seul et même fichier)

A la place de *spécifications*, écrire **theme: sky**
Le thème sky va être appliqué à toutes les diapositives

### modifier le formatage des slides

Dans une slide contenant deux puces, introduire devant le texte de la deuxième puce l'élément suivant 

`````html
<!-- element class="fragment" data-fragment-index="1" -->
`````
Quel effet cela fait sur la slide ? 

Ajouter à un texte dans une slide l'élément suivant : 
````html
<!-- element align="right" -->
````

Quel effet cela fait-il sur la slide ?

Voir plus de fonctionnalités de présentation avec Obsidian et le plugin advanced slides sur le site [github lié au plugin](https://mszturc.github.io/obsidian-advanced-slides/)

# 6. créer des notes à partir des textes en Open Document (.odt)

Comme on l'a vu plus haut, les notes en format open document que comporte le coffre ne sont pas visibles dans Obsidian car en tant qu'éditeur de texte, Obsidian ne peut lire ce qui est écrit avec un traitement de texte comme Word ou LibreOffice. 

Il va donc falloir convertir ces notes de leur format natif en markdown

Pour retrouver dans Obsidian la forme du document en format open document, vous pouvez vous référer au *Mode d'emploi d'obsidian* dans votre coffre. Ce n'est pas un mode d'emploi ni officiel, ni même complet. C'est la synthèse de toutes les informations que j'ai eu à mobiliser pour me permettre de travailler avec Obsidian comme je le souhaitais.
Une version à jour de ce document se trouve sur [Github](https://github.com/damienbelveze/Obsidian3/blob/main/Mode%20d'emploi%20d'Obsidian.md)

- Mettre en forme dans Obsidian la note Google News, pour qu'elle ait la structure du document .odt

- Intégrer le tableau (tableau.ods) à la note Google News en utilisant le service [Exceltomarkdown](https://tabletomarkdown.com/convert-spreadsheet-to-markdown/)  

- Créer des liens ([[wikiliens]]) à l'intérieur des trois notes. Chaque wikilien crée un lien et un rétrolien (activer le plugin Coeur Rétroliens pour afficher les rétroliens)

- Dans le document krishna_bharat.odt, sauvegarder l'image de KB (avec le nom de fichier krishna_bharat.jpg) et envoyez-la dans le coffre d'Obsidian, dans le dossier *image*  

- Dans la note consacrée à Krishna Bharat, changer le chemin vers la photo de Krishna Bharat : remplacer le chemin existant par le nouveau chemin (relatif) : images/Krishna_Bharat.jpg. Ajouter entre les crochets un texte alternatif (Krishna Bharat) 

# 7. Les citations dans Obsidian

Pour gérer les citations de textes provenant de Zotero dans Obsidian on a besoin d'ajouter un composant supplémentaire à Zotero et un composant supplémentaire à Obsidian

## 7.1 charger le plugin betterbibtex dans Zotero

Charger le [plugin BetterBibTex](https://github.com/retorquere/zotero-better-bibtex/releases/tag/v6.7.13) dans Zotero
si vous n'avez jamais encore chargé manuellement un plugin dans Zotero. 
Voici comment faire : 

- clic-droit sur le fichier .xpi
- cliquer sur "Enregistrer la cible du lien sous" et sélectionner le bureau de votre ordinateur
- ouvrir Zotero, aller dans Outils>extensions, cliquer sur l'engrenage et sélectionner Installer depuis un fichier, sélectionner le ficher xpi
- autoriser le téléchargment, recharger Zotero

## 7.2 Charger dans Obsidian le plugin qui permet d'importer des données dans Zotero

Comment charger un plugin dans Obsidian ?
- Paramètres > Plugins Tiers > désactiver le mode sans échec si ce n'est pas déjà fait
- Pour ce plugin, chercher avec "Citations"
- installer ce plugin
- ne pas oublier de l'activer dans la liste des plugins communautaires !
    
## 7.3 Créer dans votre espace de travail sur Obsidian un dossier pour l'article à rédiger

- créer un dossier ( par exemple intitulé 'Publications' )
- créer une note intitulée 'article' ( qui deviendra le futur article à publier ). Cette note sera visible dans le "Vault" (espace de travail d'Obsidian) avec pour nom de fichier article.md
   

## 7.4 Exporter depuis Zotero la collection de références pertinente pour l'article à rédiger

Dans Zotero créer une collection intitulée par exemple *Obsidian*

aller chercher la référence mentionnée dans la note sur Google News (Nikos Smyrnaios, Franck Rebillard, L’actualité selon Google L’emprise du principal moteur de recherche sur l’information en ligne - CAIRN).
Intégrer cette référence dans Zotero

Dans Zotero exporter la collection qui correspond aux références de l'article en la tenant à jour (cocher dans le menu d'export *Keep updated / garder à jour*). Cette option permet d'ajouter de nouvelles références dans la collection Zotero qui vont automatiquement se retrouver dans le fichier .bib là où il aura été exporté. Appelons ce fichier exporté references.bib(par exemple). Enregistrer le fichier dans le dossier article sous un répertoire qu'on crée à l'occasion (par exemple en l'intitulant par exemple 'references')
 
## 7.5 Indiquer à Obsidian où trouver le fichier de références

Dans les options du plugin, indiquer le nom du répertoire ('références') qui contient le fichier .bib provenant de Zotero. Indiquer le chemin relatif vers le fichier bib : /espacedetravail/references/references.bib

Si le chemin est le bon, le nombre d'enregistrements du fichier bib devrait apparaître.
    
## 7.6  Dans le plugin Citations, définir un raccourci pour insérer des références

Dans les Paramètres d'Obsidian > raccourcis clavier, paramétrer un raccourci clavier pour insérer une citation en format markdown (Citations: insert markdown citation). Saisissons à cet endroit par exemple la combinaison de chiffres suivante : **Shift + Ctrl + M**. Dans l'article, pour insérer une citation, utiliser le raccourci clavier indiqué plus haut.
Insérer à l'endroit pertinent un renvoi vers l'article de Rebillard et Smyrnaios

Créer à la fin de la note un titre "Références" et passer une ligne

# 8. convertir une note avec pandoc

## 8.1 convertir avec pandoc en lignes de commande

Pandoc est normalement installé sur votre ordinateur.
C'est un programme qui n'a pas d'interface graphique, on l'utilise donc en lignes de commande à partir d'un interpréteur de lignes de commande.
Ouvrir l'interpréteur dans un dossier :
- GNU/Linux : Ctrl+Alt+T  
- Windows : shift+clicdroit > *ouvrir la fenêtre powershell ici*    
- Mac : command + espace > sélectionner *Terminal* puis naviguer avec la commande *cd* jusqu'au bon répertoire.  

conversion de la note sur Google News en PDF

On part du principe que LaTeX est installé et fonctionne sur la machine (sinon au lieu d'utiliser pandoc on peut convertir la note en PDF directement depuis Obsidian)

ouvrir un terminal dans le même répertoire que cette note :

```
pandoc google_news.md -o google_news.PDF
```

la conversion se fait, mais :

- on n'a pas de page de titre
- on n'a pas la référence correctement insérée dans le texte et à la fin

Pour réaliser la page de titre, on peut utiliser un entête en YAML :

commencer la note par :

\-\-\-
title: Google News  
subtitle: exercice pour maîtriser Obsidian  
date: 30/09/2021  
author : indiquericivotrenom  
\-\-\-

Renvoyer la même commande dans le terminal (flêche vers le haut + entrée)  
Observer les différences.

Créer un dossier à la racine du coffre nommé csl
dans ce dossier, télécharger la feuille de style suivante ieee (la télécharger [depuis le site Zotero](https://www.zotero.org/styles/ieee?source=1) en format .csl, envoyer ce fichier csl dans le dossier csl.

```
pandoc "google news.md" --from html --to pdf --bibliography=URFIST_obsidian.bib
--csl=csl\ieee.csl --pdf-engine=xelatex --citeproc -f markdown+smart -o google_news.pdf
```

La conversion devrait cette fois prendre en compte la citation et la référence bibliographique.

## 8.3 convertir avec pandoc en utilisant bracket-eraser

bracket-eraser est un petit script qui vous permet deux choses :
- vous débarrasser des liens sous la forme [[liens]] (=wikiliens) qui restent dans le document en pdf après conversion avec Pandoc dans les exemples précédents
- utiliser pandoc de façon guidée avec une interface graphique très basique (menus). Pour ajouter de nouvelles fonctionnalités, il faudra modifier le script.
Si l'exécutable (bracket-eraser.exe) ne fonctionne pas à cause d'un parefeu, testez le script dans une fenêtre powershell

```
./script.ps1
```

Si la console ne vous permet pas d'exécuter un script, changer les permissions de powershell:
Dans Powershell:

Get-ExecutionPolicy

Sélectionner remotesigned

N'hésitez pas à me solliciter à tous les moments du cours afin que je vous vienne en aide.

# Annexes

## Annexe 1 : Version des logiciels utilisés au 12 mai 2022

| logiciel | version classe mobile | dernière version disponible au 5 mai 2022 |
|:---:|:---:|:---|
| Obsidian | 0.12.5 | 0.14.6 |
| Zotero | 5.0.93 | 6.0.6 |
| BetterBibTeX | télécharger la version [6.1.7](https://github.com/retorquere/zotero-better-bibtex/releases/tag/v6.1.7) pour la version 5, la dernière en date pour la version 6 | 6.7.1 |
| Pandoc | 2.14.0.3 | 2.18 |
| LaTeX | TeXlive 2020 |  TeXlive 2022 |

## Annexe 2 : en cas de blocage par le parefeu

Si vous êtes bloqué.e par le parefeu de votre ordinateur, et que vous ne pouvez pas ou ne voulez pas modifier les règles du pare-feu. Tous les plugins communautaires d'Obsidian peuvent s'installer manuellement. Voici comment faire avec le plugin Citations

Dans votre coffre obsidian, sous le dossier *.obsidian*, créer un dossier *plugins*. C'est à cet endroit que les fichiers relatifs aux plugins doivent se trouver
Sous *plugins*, créer un dossier *Citations* (cf. la liste des noms des plugins communautaires déjà enregistrés [sur Github](https://github.com/obsidianmd/obsidian-releases/blob/master/community-plugins.json))
Aller ensuite sur la [page de livraison du plugin](https://github.com/hans/obsidian-citation-plugin/releases/tag/0.4.4)
tout en bas de la page, on a trois dossiers :

- main.js    
- manifest.json  
- styles.css  

Ces trois dossiers doivent être copiés chacun sous le dossier *Citations* (clic droit sur chacun > enregistrer la cible du lien sous > aller dans le répertoire *Citations* > coller)

L'architecture que l'on doit trouver est donc la suivante :

![arborescence de fichiers](images/arborescence.png)


- Fermer et rouvrir Obsidian, ouvrir un coffre, sélectionner URFIST-obsidian  
- désactivez le mode sans échec pour permettre le chargement du plugin
- Activer le plugin *Citations* et suivre les indications pour le paramétrer (voir ci-dessus)  


