---
title: Pourquoi et comment utiliser Obsidian pour ma thèse ?
subtitle: "Projet de formation doctorale"
author: Damien Belvèze
date: 04/06/2021
link_citations: true
bibliography: biblio/mylibrary.bib
biblio_style: csl/ieee.csl
toc: true
toc-title: table des matières
tags: [prise de notes, méthode de travail]
aliases: [Obsidian, obsidian]
---

<!doctype html> 

# 1. Pourquoi utiliser Obsidian pour prendre des notes ?

![[tweet_schaller.png|{width=50%}]]

## 1.1 avantages

- hébergement en local (pas nécessaire de souscrire à un compte contrairement à Notion ou à Roam, ce dernier étant en plus payant). Tous vos fichiers - plugins, css, images, sons, fichiers en markdown ou en PDF-  sont dans un coffre (*Vault*, dans le langage d'Obsidian) que vous hébergez sur votre ordinateur et que vous pouvez synchroniser avec un serveur distant (Github par exemple). Dans ce tutoriel nous traduirons sytématiquement "Vault" par "coffre".

- format ouvert des notes ([[markdown]] = format universel, contrairement à  Evernote)
- les notes sont hébergées sur notre ordinateur : on en a la maîtrise.
- Pas dépendant d'un éditeur (contrairement à Org-roam pour emacs). On peut éditer depuis Obsidian ou bien depuis n'importe quel éditeur qui supporte le markdown (emacs, atom, panwriter, etc.)
- Nombreuses possibilités de recherche dans les notes (par fichier, par mot dans la note, par mot dans la section de la note, par tag...) (voir [[@CaseObsidiananswernotetaking2021]])
- le graphe de notes augmente la capacité de faire de nouvelles relations entre des concepts
- Importance des rétroliens (combien de notes citent une même note). Cela permet de faire des associations d'idées et des graphes
- possibilité d'avoir dans un même endroit des notes et des fichiers divers (code, images, vidéos) et de pouvoir lier ces notes et ces fichiers entre eux.
- le nombre de plugins avec lesquels on peut étendre les capacités d'obsidian est en croissance constante.

## 1.2 limites 

- logiciel propriétaire, mais une bonne partie du code est en opensource et surtout la communauté des utilisateurs développe un grand nombre de codes en open source. Toutefois, si on veut se tourner vers une alternative entièrement libre comparable à Obsidian, le logiciel [Cosma](https://cosma.graphlab.fr/) mis au point par Arthur Perret (actuellement disponible sur Mac et Windows et bientôt sur Linux) offre une alternative très convaincante. 
- l'affichage des images **dans** l'application n'est pas encore au point. Si la conversion avec pandoc fonctionne sur la taille des images, à l'intérieur d'Obsidian la taille de celles-ci est difficilement modulable. 


## 1.3 intérêt cognitif

Le monde du web est celui de la réplication et du copier-coller. Pour autant copier-coller un texte lu est une facilité qui nous empêche de nous approprier son contenu. 

Plutôt que de copier-coller un texte qui nous intéresse dans un un outil comme Obsidian, il est nettement préférable de le reformuler avec ses propres mots, comme si on voulait l'expliquer à une personne qui ne dispose pas de la source. On s'assure ainsi qu'on a bien compris soi-même le sens du texte en reliant la nouveauté que constitue pour nous l'énoncé du texte avec ce qu'on sait déjà et avec notre contexte d'apprentissage. 

Le passage par l'écriture facilite non seulement l'apprentissage mais aussi la réflexion et la conscientisation, y compris de ses émotions ([voir cette discussion](https://www.reddit.com/r/Zettelkasten/comments/ob6htk/tip_using_your_own_words/) sur reddit). 

Il est donc important de restreindre les citations aux passage où l'auteur résume sa pensée de manière particulièrement marquante. 

En reliant entre elles ces notes prises au fil de l'eau à la faveur de lectures, Obsidian permet de structurer sa pensée et peut éventuellement amener à des rapprochements inédits entre des concepts qui sont en relation au départ avec des contextes différents (valeur heuristique de ces graphes de notes) 

## 1.4 Obsidian sur son smartphone

Depuis juillet 2021, Obsidian est disponible sur Ios et Android ([source](https://www.igen.fr/app-store/2021/07/gestion-de-notes-obsidian-est-desormais-disponible-sur-ios-et-android-123911))
Afin de synchroniser ses fichiers avec ceux que contient son ordinateur, 

1. télécharger l'app
2. télécharger (si vous n'en disposez pas déjà) d'une app destinée à synchroniser vos fichiers locaux sur smartphone avec ceux du cloud dont vous disposez (par exemple dropsync pour dropbox, foldersync, autosync pour Google Drive ou [Onesync](https://play.google.com/store/apps/details?id=com.ttxapps.onesyncv2&hl=en_US&gl=US) pour Onedrive)
3. connectez votre app de synchronisation avec le dossier dans le cloud que vous utilisez qui contient vos notes
4. synchronisez
5. ouvrez l'app obsidian et choisissez le dossier synchronisé comme coffre. 


# 2. La méthode de prise de notes Zettelkasten

Voir  [[zettelkasten (méthode)]]


# 3. Rédiger ses notes en [[markdown]]

## 3.2 niveaux de titre

Le titre de la note est distinct du nom du fichier. Le nom du fichier est la première chose qui est créée de la note. 
Dans une note, entourer un mot avec un double crochet (\[\[mot\]\]) crée automatiquement une note comportant mot.md dans le coffre. 
Une option des paramètres intitulée "toujours mettre à jour les liens internes" permet de maintenir le lien entre la note 1 comportant \\\[mot\]\] et la note rebaptisée par exemple word.md

Si on configure un titre dans le pavé Yaml, celui-ci apparaîtra comme titre du document exporté (par exemple en PDF). Voir la partie concernant [[Mode d'emploi d'Obsidian#5 2 YAML|YAML]]

| MD | niveau de titre | HTML |
|:---:|:---:|:---:|
| \# titre 1 | titre de niveau 1 | \<h1\> |
| \#\# titre 2 | titre de niveau 2 | \<h2\> |
| \#\#\# titre 3 | titre de niveau 3 | \<h3\> |
| \#\#\#\# titre 4 | titre de niveau 4 | \<h4\> |

## 3.3 tableaux et indentation


### éditer un tableau

**Code :** 

\| colonne A \| colonne B \| colonne C \|
\|\:\-\-\-\:\|\:\-\-\-\|\-\-\-\:\|
\|centre\|aligné gauche \|aligné droite 

**résultat :**

| colonne A | colonne B | colonne C |
|:---:|:---|---:|
| centre | aligné gauche | aligné droite |


Pour fusionner des cellules, il est actuellement nécessaire de recourir au HTML, car le markdown ne gère que des cellules équivalentes en taille (voir [[Mode d'emploi d'Obsidian#utilisation du HTML#pour faire des tableaux avec des colonnes ou des lignes fusionnées]])

Si on dispose d'un tableau en format exel ou calc et qu'on veut le transposer en format markdown, on peut utiliser des ressources en ligne pour cela comme [*Table to Markdown*](https://tabletomarkdown.com/convert-spreadsheet-to-markdown/)

Le *pipe* (\|) qui sert à faire des tableaux peut aussi permettre de prendre en compte les espaces en début de phrase (pour une conversion en pdf avec Pandoc)

**code :** 

![respect des espaces en début de ligne](images/adonis.png)


**résultat : **

| Crépuscule
|     La nature est en extase de crépuscule
| Et son ode, 
|                              mon sang, 
| Un océan brûlant s'enroule, recommençant ses vagues
|                  jusqu'à moi

|                         (Adonis, *Ismaël*)


## 3.3 caractères

| MD | niveau de titre | HTML |
|:---:|:---:|:---:|
| \* | *italiques* | \<i\> |
| \*\*| **gras** | \<b\> |
| \~\~ | ~~barré~~ | \<s\> |
| \` | `code` | \<code\> |

Pour "échapper" un caractère qui fait partie de la syntaxe du markdown (\*,\#, \~ par exemple), il faut faire précéder le caractère en question d'un antislash (\\) 


## 3.4  Liens, images, tags

### liens internes

Comme on l'a vu plus haut, pour faire un lien interne vers une note existante ou bien en créer une, il suffit de mettre entre double-crochets le mot ou l'expression qui correspond au nom de la note en question. 

Si l'on veut pointer vers une section de cette note, rajouter un dièze et sélectionner la partie de la note vers laquelle on veut pointer. 

Voici comment se formate par exemple un lien direct vers la partie de ce guide correspondant aux [[Mode d'emploi d'Obsidian#Les rétroliens|rétroliens]] :

Voici comment se formate par exemple un lien direct vers la partie de ce guide correspondant aux **\[\[Mode d'emploi d'Obsidian\#Les rétroliens\|rétroliens\]\]**

syntaxe du lien : 
\[\[nom de la note\#nom du header|texte du lien\]\]

Si on veut lier sur un bloc plutôt qu'un header, remplacer le \# par un \^ 

### notes de bas de page

\[\^\1\] permet de créer une note de bas de page portant le numéro 1. Exemple: 
première note de bas de page[^1]

[^1]: cette note de bas de page peut être placée n'importe où, elle apparaîtra forcément à la fin du document.


### liens externes

\[bibliothèque\]\(https://bibliotheques.univ-rennes1.fr \)

-> [bibliothèque](https://bibliotheques.univ-rennes1.fr)

\!\[bibliothèque\](https://bibliotheques.univ-rennes1.fr/sites/bibliotheques.univ-rennes1.fr/files/styles/max_2600x2600/public/medias/images/Sante-web.jpg?itok=S0Ax1GSa)

ou 

\!\[bibliothèque\]\(images/BUVS.jpg\)

-> ![bibliothèque](images/buvs.jpg)

possibilité, comme pour un PDF de faire un glisser déposer du document dans la note. 

\#tag 
Le dièse sans espace après = tag
Possibilité de faire une recherche sur les tags uniquement.
Possibilité d'afficher le volet des tags à droite (plugin principal *tag pane* : mettre en on et choisir un raccourci clavier. Les tags y apparaissent par défaut rangés par ordre de fréquence d'apparition dans les notes)
On peut aussi définir ces tags dans le pavé YAML (voir plus bas), ce qui a l'avantage de ne pas les laisser apparaître dans le document quand celui-ci est exporté dans un format de publication (wiki, html, pdf, etc. )

## 3.5  autres langages (html, LaTeX)

Le markdown est une syntaxe très simple à apprendre et très versatile. Toutefois, ce n'est pas une syntaxe universelle. Pour éditer certains contenus, vous aurez besoin de faire appel à d'autres langages à l'intérieur de votre texte en markdown, notamment le Html ou le LaTeX (si vous avez téléchargé un éditeur LaTeX vous pourrez constater que le LaTeX et le Markdown font plutôt bon ménage dans Obsidian)

### utilisation du LaTeX

On peut encapsuler du LaTeX entre deux **\$**

\$67\\sqrt{\\prod_{67}^{4}}\\Rightarrow \\mathrm{C}_{56}^{'}\$

donne :

$67\sqrt{\prod_{67}^{4}}\Rightarrow \mathrm{C}_{56}^{'}$

Cette formule ne correspond à rien, elle a été créée à partir d'un [éditeur de formules en LaTeX](https://latexeditor.lagrida.com/) disponible en ligne

Utiliser LaTeX pour réaliser les exposants : 

- le mebioctet ou Mi parfois écrit Mio correspond à \$2\^\{20\}\$ octets 
- le gibioctets ou Gi parfois écrit Gio correspond à   \$2\^\{30\}\$ octets

donne :

- le mebioctet ou Mi parfois écrit Mio correspond à $2^{20}$ octets 
- le gibioctets ou Gi parfois écrit Gio correspond à   $2^{30}$ octets


### utilisation du HTML

Lorsqu'on copie-colle du html dans Obsdian, généralement ce html est copié avec des balises supplémentaires (\`\`). 
Pour copier-coller du HTML qui fonctionne correctement, préférer Ctrl+shift+V à Ctrl+V

#### pour faire des tableaux avec des colonnes ou des lignes fusionnées

**code**

~~~
<table>
    <thead>
        <tr>
            <th>entête 1</th>
            <th>entête 2</th>
            <th>entête 3</th>
        </tr>
    </thead>
    <tbody>
        <tr>
            <td rowspan=4>valeur 1 (4 cellules verticales)</td>
            <td rowspan=2>valeur 2 (2 cellules verticales)</td>
            <td>valeur 4</td>
        </tr>
        <tr>
            <td>valeur 5</td>
        </tr>
        <tr>
            <td rowspan=2>valeur 3 (2 cellules verticales)</td>
            <td>valeur 6</td>
        </tr>
        <tr>
            <td>valeur 7</td>
        </tr>
    </tbody>
</table>

~~~

**Résultat**

<table>
    <thead>
        <tr>
            <th>entête 1</th>
            <th>entête 2</th>
            <th>entête 3</th>
        </tr>
    </thead>
    <tbody>
        <tr>
            <td rowspan=4>valeur 1 (4 cellules verticales)</td>
            <td rowspan=2>valeur 2 (2 cellules verticales)</td>
            <td>valeur 4</td>
        </tr>
        <tr>
            <td>valeur 5</td>
        </tr>
        <tr>
            <td rowspan=2>valeur 3 (2 cellules verticales)</td>
            <td>valeur 6</td>
        </tr>
        <tr>
            <td>valeur 7</td>
        </tr>
    </tbody>
</table>

Si on veut fusionner des cellules sur plusieurs colonnes, plutôt que sur plusieurs lignes, utiliser l'attribut *collspan* comme dans [cet exemple](https://www.w3schools.com/TAGS/att_td_colspan.asp)


<table>  
  <tr>  
    <th>Mois</th>  
    <th>Economie</th>  
  </tr>  
  <tr>  
    <td>Janvier</td>  
    <td>100€</td>  
  </tr>  
  <tr>  
    <td>Février</td>  
    <td>80€</td>  
  </tr>  
  <tr>  
    <td colspan="2">Somme: 180€</td>  
  </tr>  
</table>

Pour changer la couleur du texte, on peut recourir à du html, par exemple : 

``
`<font color="#cc241d">Texte en couleur</font>`
``

donne : 

<font color="#cc241d"> Texte en couleur</font>

faire un saut de page nécessité l'inclusion de html

``
<div style="page-break-after: always visibility: hidden">
\pagebreak
</div>
``

Le contenu qui suit se trouvera sur la page suivante.

<div style="page-break-after: always visibility: hidden">
\pagebreak
</div>

L’image peut prendre trop d’espace sur la page. Dans ce cas, il convient de déterminer sa dimension pour qu’elle s’insère sans problème sur la page. Cela se fait au moyen des attributs HTML width ou heigth exprimés en valeur absolue (nombre de pixels ou relatives (pourcentage par rapport à la largeur ou à la hauteur de l'image initiale). 

``
![bibliotheque](images/buvs.jpg){ width=20% }
``

réduit à 20% la largeur initiale de l’image (on ne touche pas à la hauteur pour garder les proportions). 


![bibliotheque](images/buvs.jpg){ width=20% }
	

on peut évidemment définir cette largeur en pixels :

``
![bibliotheque](images/buvs.jpg){ width=250px }
``
réduit la largeur de l'image à 100 pixels

![bibliotheque](images/buvs.jpg){ width=250px }




Quant à l’alignement du texte, cela peut se traiter avec des lignes de HTML insérées dans le document ou bien en renvoyant vers un fichier CSS, [comme le suggère cet internaute](https://stackoverflow.com/questions/255170/markdown-and-image-alignment).


<span>
<img style="float: right;" src="images.buvs.jpg">
</span>


# 4. Les plugins d'Obsidian

La richesse d'Obsidian tient au nombre en croissance rapide des plugins qui rendent cet outil adaptable à un grand nombre de tâches. 

Il existe deux types de plugins : 

- Les plugins par défaut 
- Les plugins communautaires

Les premiers sont installés en même temps qu'Obsidian, il ne reste plus qu'à les activer si on souhaite s'en servir.

Les seconds nécessitent la désactivation du mode sans échec (aller dans les paramètres > plugins tiers > désactiver le mode sans échec).
A partir de là, pour trouver un plugin communautaire : 

- soit on passe par le catalogue des plugins depuis Obsidian (parcourir la liste des plugins communautaires)
- soit on va chercher le plugin sur github, là où il a été déposé par le concepteur. C'est sur github, par exemple, qu'on doit aller chercher le plugin qui permet de faire un export d'une note depuis Obsidian en PDF à l'aide de Pandoc. 

Quelque soit le type de plugin, on peut paramétrer leur utilisation dans les paramètres une fois qu'il a été installé et activé (dans les Paramètres, descendre jusqu'au menu *option des plugins*)

Il est très utile de paramétrer des **raccourcis-clavier** pour chaque fonctionnalité appartenant ou non à un plugin. Cela fait gagner beaucoup de temps au quotidien (paramètres > options > raccourcis-clavier ; chercher la fonctionnalité par son nom et lui associer une combinaison de touches ; par exemple créer un graphique local à partir de la note ouverte = shift+Ctrl+G).


## 4.1 Les plugins par défaut

Les plugins par défaut font partie du coeur d'Obsidian. Pour les activer les utiliser, aller dans les paramètres (icone roue) et sélectionner les *plugins principaux*

Seuls deux plugins correspondent à une option payante d'Obsidian : la publication des notes sur le serveur d'Obsidian et leur synchronisation avec les notes hébergées en local.

Voici une revue de quelques plugins installés par défaut :

### Explorateur de fichiers

L'explorateur de fichiers permet de naviguer dans les fichiers de votre coffre à l'endroit où celui-ci est hébergé. 

### Vue graphique

La vue graphique vous permet de visualiser l'ensemble de vos notes et des liens qui les unissent sous la forme d'un graphe. Lorsque les notes ne sont pas liés à quelques projets, cette constellation devient vite illisible. 

![vue graphique globale](images/graphe_obsidian.png)

Bien entendu, on peut zoomer sur telle ou telle partie, mais ça devient vite confus au bout d'un moment. 

pour visualiser les notes connexes à la note de son choix, il suffit de laisser la souris sur cette note 

![liens entre les notes](images/selection_graphe.png)

Les points de couleur représentent le statut de la note : 

(couleurs par défaut)
bleu : images
marron : tags
gris clairs : notes avec texte
gris foncées : notes sans texte (seul le titre existe, créé dans une autre note par du texte mis entre accolades). Ces notes restent à rédiger. 
On peut assigner aux tags d'autres couleurs que la couleur marron qui est celle par défaut. 

Pour cela se positionner dans la vue graphique, cliquer sur la roue crantée et sélectionner nouveau groupe. Pour visualiser toutes les références (notes commençant par un @), on peut par exemple fixer une couleur particulière au groupe **file:@**

![couleur des tags](images/couleur_tags.png)


Plus intéressante est la possibilité d'ouvrir un graphe local à partir de la note (aller dans les raccourcis clavier pour paramétrer la combinaison de touches qui vous conviendra pour faire apparaître ce graphe)

![graphe local à partir de la note affichée](images/graphe_local.png)

On peut régler la taille du graphe en choisissant le nombre de degrés à partir du noeud que constitue la note affichée (de 1 à 6 degrés - ci-dessus, le nombre de degrés est fixé à 3 : "démiurge" est distant de 3 degrés de "islam")

Comme dans les outils de visualisation sous forme de graphe (par exemple Gephi), on peut régler la force du graphe, la taille des noeuds, caractériser les liaisons au moyen de flèches (quelle note cite quelle autre note)...

### Les rétroliens

les rétroliens ou *backlinks* constituent la grande force des applications comme Roam, org-roam ou Obsidian. Quelque soit la note que vous affichez, si vous activez ce plugin, vous pourrez vous rendre facilement aux notes qui font référence à celle-ci au moyen des rétroliens en bas de page.

### Modèles

Activer ce plugin, vous permettre de constituer des templates (voir ci-dessous)

### Diapositives

Il est très simple grâce à ce plugin de constituer des diapositives et les présenter à la place d'un document impress ou powerpoint. 

chaque diapositive est séparée de la précédente par trois tirets (\-\-\-)



# 5. Créer des modèles (templates)

Les templates se trouvent dans un répertoire particulier à la racine du coffre. 
Rédiger un template en markdown et l'enregistrer à cet endroit

Paramétrer un raccourci clavier pour faire apparaître le menu de sélection des templates.

## 5.1 Utilité des templates et des champs de métadonnées

Un template peut avoir des champs pré-remplis à l'instar d'une fiche :

*lieu du rendez-vous ou lien de la visio : 
date du rendez-vous : 
heure du rendez-vous : 
participants : 
sujets :*

ou encore (par exemple pour une note de lecture)

*titre de l'ouvrage : 
auteur : 
année d'édition : 
résumé : 
mon appréciation personnelle sur l'ouvrage : 
intérêt par rapport à mon travail : *

Il peut s'agir aussi d'une configuration habituelle qu'on veut donner à nos notes, par exemple, cette configuration peut prendre en charge le pavé YAML

## 5.2 YAML

...n'est pas seulement un nouveau format de balises comme le veut son acronyme (yet another markup language). Il s'agit d'un espace qui va recueillir toutes les métadonnées importantes du document.

Le YAML frontmatter (frontispice ou pavé YAML) se présente en tout début de document (ne rien entrer avant) et est délimité par deux séries de trois hyphens (tirets moyens)

exemple de pavé YAML

\-\-\-
**title:** Mode d'emploi d'obsidian 
**subtitle:** Comment prendre efficacement des notes pour sa thèse
**date:** 21/06/2021
**author:** Damien Belvèze
**affliliation:** Université de Rennes 1
**toc:** true
**toc-title:** table des matières
**link-citations:** true
**bibliography:** mabiblio.bib
**biblio-style:** nature.csl
**tags:**\[tag1, tag2, tag3\]
**aliases:**\[alias1, alias2, alias3\]
\-\-\-

- les valeurs inscrites en tant que titre, sous-titre, nom de l'auteur et date, vont au moment de la conversion avec Pandoc constituer la page de titre

- si toc (table of content) reçoit la valeur *true*, une table des matières sera générée. 

- si *link-citations* reçoit la valeur *true*, les liens seront cliquables dans le format de sortie (html ou pdf)

- les champs bibliography et biblio-style règlent les aspects bibliographiques. 

* *bibliography*: spécifier le chemin absolu (C:/..../fichier.bib) ou relatif (references/fichier.bib) vers le document qui contient les références bibliographiques (un fichier .bib exporté de Zotero par exemple)

* *biblio-style*: lien vers le fichier csl qui contient les règles de présentation de la bibliographie (par exemple [nature.csl](https://www.zotero.org/styles/nature?source=1))

- *tags*: permet d'ajouter des tags à la note. Ceux-ci ne seront pas visibles dans le document issu de la conversion

- *aliases*: cette fonctionnalité ajoutée à la version 0.9 est très importante : elle permet de lier les notes entre elles sans pour autant respecter exactement la forme sous laquelle se présente le titre de la note. 
  Par exemple, dans une note intitulée "féminisme", ajouter comme alias *féministe*, *féministes*, *féminismes* permettra de faire un lien vers cette note à partir d'autres notes où apparaîtront les noms *féminisme* (au singulier et au pluriel) et *féministe* (au singulier et au pluriel). Cela permet également de gérer la polysémie de certains termes dans l'organisation de ses notes. 
  
  
## 5.3 paramétrer des modèles par défaut

on a vu plus haut comment créer des modèles. Si on en reste à cette étape, à chaque fois qu'on créera une note, il faudra aller choisir les modèles dans la galerie de modèles existants que l'on aura créés. 
Comment faire pour que la note créée prenne immédiatement un modèle par défaut ? 
Le plugin **Templater** rend cela assez facile : 
- charger le plugin, l'activer
- dans les paramètres du plugin, indiquer où se trouve le dossier qui contient les modèles
- mettre l'option "trigger templater on new file creation" en position *On*
- dans le paramètre *empty file template* pointer vers le modèle de son choix : c'est ce modèle qui s'appliquera désormais à chaque création de note. 

Ce n'est que la base du plugin **templater**. Ce plugin permet d''éditer en javascript des préférences pour appliquer automatiquement des modèles différents en fonction de ce que contient le nom de la note. 

templater permet également d'inscrire des variables et des fonctions en javascript dans une note. 
A titre d'exemple, la fonction

\<\% tp.file.creation_date("DD-MM-YYYY") \%\> 

inscrit la date du jour dans la note. 
C'est une commande très utile à insérer dans un template afin de permettre à toutes les notes créées à partir de ce template de contenir la date du jour. 

# 6. Inscrire son quotidien dans Obsidian

Si l'on souhaite que sa bibliothèque de notes dans Obsidian ne reflète pas seulement les documents et concepts relatifs à sa thèse, mais qu'on veut y intégrer aussi des éléments de son organisation personnelle (todo list, notes journalières), Markdown permet de faire cela avec quelques plugins compémentaires.

## 6.1 Todolists

Obsidian n'est pas principalement conçu pour organiser ses tâches et gérer des *todo lists*, mais on peut néanmoins adapter cet outil à cette fin dans une certaine mesure.

- tâche à effectuer avant le 6 décembre 2021

\- \[ \] tâche > 2021-12-6

- [ ] tâche > 2021-12-6

- tâche effectuée

\- \[ x \] tâche > 2021-12-6

- [x] tâche > 2021-12-6


chercher dans l'explorateur une tâche à faire : 

"- [*]"


## 6.2 calendars

On peut afficher un calendrier dans Obsidian au moyen du plugin communautaire Calendar. Si cela fait sens pour vous, activer dans les paramètres du plugin calendar le nombre des semaines car il est désactivé par défaut.
Cliquer sur une journée permet de créer une note relative à cette journée. 
Il est possible de créer un template pour les notes quotidiennes en indiquant son chemin dans les paramètres du plugin.

![revue des activités de la semaine](images/calendar.png)

## 6.3 daily notes

Obsidian vous permet si vous le souhaitez de créer des notes quotidiennes.
Dans les plugins par défaut, mettre le plugin "notes quotidennes" sur *on*


# 7. Utiliser Zotero avec Obsidian 

Prérequis : disposer de Zotero avec le plugin BetterBibTeX chargé. 
Avoir téléchargé Pandoc et un éditeur LaTeX sur sa machine.
Si la version de Pandoc dont on dispose n'inclue pas le plugin pandoc-citeproc, charger ce plugin. 

1. Charger dans Obsidian le [plugin](https://github.com/hans/obsidian-citation-plugin/tree/0.1.3) **Citations** qui permet d'importer des données dans Zotero

2. Comment charger un plugin dans Obsidian ? 
    -Paramètres > Plugins Tiers > désactiver le mode sans échec
	-Pour ce plugin, chercher avec "Citations"
	-installer ce plugin
	
3. Créer dans Obsidian votre espace de travail 
    - créer un dossier (intitulé Article)
    - créer une note (qui deviendra le futur article à publier)
    
 4. Dans Zotero exporter la collection qui correspond aux références de l'article en la tenant à jour (appelons ce fichier references.bib). Enregistrer le fichier dans le dossier article sous un répertoire qu'on crée à l'occasion (par exemple en l'intitulant 'references')
 
 5. Dans les options du plugin, indiquer le nom du répertoire ('références') qui contient le fichier .bib provenant de Zotero. Indiquer le chemin relatif vers le fichier bib : /espacedetravail/references/references.bib
     Si le chemin est le bon, le nombre d'enregistrements du fichier bib devrait apparaître. 
	 Il faut également définir un dossier où iront les références bibliographiques issues de Zotero (notes précédées d'un @). Si on souhaite que celles-ci aillent à la racine du coffre, on supprimer le texte qui est par défaut. Si on souhaite les ranger dans un dossier particulier, créer ce dossier (par exemple sous .obsisian) et indiquer au plugin le chemin vers ce dossier.
	 
6. Dans les Paramètres d'Obsidian > raccourcis clavier, paramétrer un raccourci clavier pour insérer une citation en format markdown (Citations: insert markdown citation). Saisissons à cet endroit par exemple la combinaison de chiffres suivante : **Shift + Ctrl + M**

7. Dans l'article, pour insérer une citation, utiliser le raccourci clavier indiqué plus haut. 

8. Une fois toutes les références ajoutées, ouvrir dans l'explorateur le répertoire où se trouve le fichier dans lequel on a inséré ces références. 

9. Ouvrir un shell, taper la commande permettant à Pandoc de convertir ce document markdown en document PDF en utilisant le filtre pandoc-citeproc

10. On obtient le PDF souhaité avec les références correctement représentées (appels de citation et bibliographie) selon le style choisi dans la commande pandoc. 


# 8. changer le CSS

une feuille de style CSS va définir pour un document en markdown comment va se présenter un titre 1 (# titre1), un titre 2 (## titre2), comment une image va être alignée par rapport au texte, comment les citations vont être présentées. 

Ce CSS peut être pris en compte lorsqu'on exporte la note d'obsidian vers un fichier HTML ou bien lorsqu'on visualise une note (aperçu en mode preview ou publication sur les serveurs d'Obsidian avec le plugin payant Publish)

Si aucun chemin vers un fichier CSS n'est spécifié dans les métadonnées (YAML), Obsidian va appliquer la feuille de style CSS qui se trouve à la base du répertoire : 
- dans les paramètres d'Obsidian (apparence), vérifier que l'option *appliquer un css personnalisé* est cochée
- ouvrir un éditeur de texte (bloc-note, notepad++, etc.) et éditez le CSS dont vous avez besoin. 
-  enregistrer le fichier à la racine du répertoire sous le nom **obsidian.css**

A titre d'exemple, le code...

``
h1 { color: #fe801a; }  
h2 { color: #d79920; }
h3 { color: #689d6a; }
``
...règle la couleur des titres. 

Il n'est pas question ici de créer un guide d'apprentissage du CSS, mais on peut trouver [ici](https://forum.obsidian.md/t/meta-post-css-themes/76) des thèmes tout faits pour les notes et [là](https://github.com/Dmitriy-Shulha/obsidian-css-snippets/tree/master/Snippets) des *snippets*, autrement dit des bouts de code en CSS qui permettent d'obtenir un affichage personnalisé de certains éléments. Ces exemples peuvent être repris pour constituer une feuille de style CSS qui nous soit propre.


# 9. Conversion de la note en PDF ou dans un autre format de sortie

On peut éditer une note en PDF en utilisant la fonctionnalité interne d'Obsidian (exporter en PDF). 
En revanche, pour gérer certains aspects comme la bibliographie, on aura besoin d'utiliser Pandoc en lien avec LaTeX 

## 9.1 pandoc

Pandoc est le couteau-suisse de l'édition numérique. Il ne dispose pas à ce jour d'une interface graphique, mais les manuels d'utilisation ne manquent pas pour apprendre à taper les lignes de commande qui vous permettront d'obtenir le résultat souhaité.

### avec le plugin obsidian-pandoc

L'export du document de son format en markdown vers un format html, wiki, odt, doc, etc. Peut se faire avec pandoc et le plugin obsidian pour pandoc seuls. 

En revanche, pour faire une conversion et un export d'un document en md vers un PDF, il faut en outre télécharger LaTeX, ce qui peut prendre du temps. 

On part du principe que LaTeX est installé sur la machine : 

1. installer la dernière version de pandoc

Il est recommandé d'aller prendre le fichier zip de la dernière version disponible sur [github](https://github.com/jgm/pandoc/releases)
dézipper le fichier sur le bureau
Afficher dans l'explorateur les fichiers cachés pour faire apparaître *appdata* dans le répertoire de l'utilisateur
aller à C:user/username/.appdata/local/
couper le dossier pandoc sur le bureau et copier le dans .appdata/local/
vérifier que pandoc.exe fait partie des fichiers collés ansi que pandoc-citeproc

2. Installer dans Obsidian le plugin 

Prendre le code source sur [github](https://github.com/OliverBalfour/obsidian-pandoc/releases)
dézipper l'archive le sur le bureau. Aller à l'intérieur du répertoire, copier le dossier et le coller dans le répertoire du coffre (obsidian > plugins), couper et coller ici le dossier obsidian-pandoc. 
Le répertoire à coller à cet endroit contient directement les fichiers du plugin dont le fichier main.js
Comme pour les autres plugins, ne pas oublier de l'activer dans Obsidian dans la liste des plugins communautaires.

3. Paramétrer le plugin

Définir avec un chemin absolu (D:/...Vault/export_pdf) un dossier dans lequel vont aller tous les fichiers exportés et convertis dans le format voulu

Attention : même si LaTeX est correctement chargé sur la machine, l'export en PDF ne fonctionnera pas avec une version de Pandoc antérieure à 2.7. Sous Linux avec la commande apt-get, ce n'est pas toujours la dernière version ni même une version récente qu'on charge. Avec la commande pandoc -V bien vérifier qu'on a chargé la dernière version de Pandoc. 

Définir des raccourcis clavier pour les différents formats d'export
Par exemple Ctrl+Alt+P pour un export en PDF, Ctrl+Alt+W pour un export en .doc, etc.

## 9.2 Directement avec Pandoc

Ouvrir dans le dossier où se trouve la note le menu contextuel qui permet d'accéder à Powershell (sous Windows : sshift + clic-droit) ou ouvrir le terminal à cet endroit sous Linux. Pour Windows. 
- Windows : ouvrir l'interface de commande powershell

Il peut être nécessaire avant de convertir le document md en pdf de supprimer les liens internes en markdown (liens vers d'autres notes), sinon le PDF comportera des \[\[\]\] indésirables dans le texte final. 

On peut utiliser powershell pour cela : 

((Get-content -path "C:\\lien\\vers\\le\fichier\\source.md" -Raw).replace("\[",''").replace("]",""'') | Set-Content -Path "C:\\lien\\vers\\le\fichier\\destination.md"

Ajouter à cela la commande propre à pandoc. 
Cela donne par exemple pour un fichier intitulé note.md

``
(Get-content ./note.md -Raw).replace("[","").replace("]","") | Set-content ./note2.md | pandoc ./note2.md --bibliography C:\Users\dbelveze\Nextcloud\obsidiantest\biblio\mylibrary.bib --csl C:\Users\dbelveze\Nextcloud\obsidiantest\csl\nature.csl --pdf-engine=xelatex --citeproc -f markdown+smart -o note.pdf | Remove-Item ./note2.md
``

ce programme: 

- affiche le contenu de note.md en supprimant les \[ et les \]
- crée à partir de ce texte un nouveau fichier
- convertit ce nouveau fichier markdown en pdf en parsant les références présentes dans un fichier .bib défini, selon un style csl défini  

On peut faire de ce programme un script powershell (script.ps1) et l'exécuter dans powershell ./script.ps1


``
pandoc 'document.md' --from html --to pdf --pdf-engine=xelatex --citeproc -f markdown+smart -o document.pdf
``


**--pdf-engine=xelatex** : utilise le programme LaTeX que vous avez installé sur votre machine pour convertir le document en PDF

**--citeproc -f markdown+smart** : gère les références bibliographiques

(prévoir un titre 1 bibliographie à la fin du document)

## 9.3 utiliser une feuille de style

On l'a vu, Markdown évacue complètement la question des styles (police, taille des caractères, couleur des caractères) pour ne s'occuper que de la structure du document. C'est la raison pour laquelle, beaucoup de personnes trouvent qu'il est plus simple d'écrire dans cette syntaxe. Toutefois, lorsqu'on travaille en vue de rendre un rapport ou bien lorsqu'on produit des documents formatés d'une certaine manière pour une entreprise, la production doit au final avoir une certaine forme, respecter une certaine feuille de style. 
Avec pandoc, il est aisé de créer un modèle adapté à ses besoins. 
Supposons que l'on souhaite créer un modèle de sortie en .docx (format word), il est conseillé de partir des modèles par défaut de pandoc. Pour obtenir celui qui concerne le format docx, entrer la commande suivante  :


`pandoc -o custom-reference.docx --print-default-data-file reference.docx`

On obtient alors un document word minimal qui ne contient que des mots comme Title, heading 1, abstract. A ces entités, le document a assigné par défaut certains styles (par exemple le titre s'imprimera par défaut en Calibri 18, de couleur bleu foncé, texte 2, tandis que les titres de premier niveau (heading 1 s'imprimeront par défaut en Calibri 16, bleu accentuation 1). 

Pour changer ces valeurs, il faut modifier les styles à l'intérieur de ce document, définir qu'un titre aura telle couleur, telle taille de caractères, sera dans telle police. Faire pareil pour le sous-titre, l'abstract, les titres 1, 2 et suivants, définir des marges, des entêtes, etc.

Pour convertir un document en markdown vers un document en format word qui corresponde à ce template modifié, si le template est dans le même répertoire que le document source, taper la commande suivante : 

`pandoc -o documentsource.md --reference-doc=nomdutemplate.docx -o documentcible.docx `

Faire de même avec un template en format open document : 

`pandoc -o custom-reference.odt --print-default-data-file reference.odt`

`pandoc -o documentsource.md --reference-doc=nomdutemplate.odt -o documentcible.odt`

plus d'info sur [l'aide en ligne de pandoc](https://pandoc.org/MANUAL.html#option--reference-doc)


# 10. Faire un backup de ses notes sur Github

1. installer Git sur sa machine
2. Se créer un compte sur github
3. ouvrir github desktop
4. créer un repository (new) depuis github desktop
5. cloner ce repository n'importe où (dans un endroit où on se souviendra qu'il est), fermer le desktop de github
6. dans l'explorateur Windows, afficher les dossiers cachés
7. dans le répertoire cloné, couper le dossier .git
8. aller dans le coffre, coller le dossier .git à la racine du coffre
9. rouvrir le desktop de github. Normalement celui-ci indique qu'il ne retrouve pas le dossier .git du répertoire cloner, cliquer sur locate et sélectionner le coffre d'obsidian (sous lequel se trouve dorénavant git)
10. normalement, github desktop indexe tous les fichiers du coffre
11. faire un premier commit (entrer juste un titre de commit) et envoyer le commit
12. installer git obsidian depuis le catalogue des plugins tiers dans Obsidian
13. activer ce plugin
14. ouvrir la palette (Ctrl+P), taper Git, choisir l'option "Commit and push all changes"
15. aller sur le repository en ligne sur github, vérifier que tous les fichiers du coffre ont bien été envoyés (vérifier que l'envoi a bien été effectué)
16. définir un raccourci clavier pour l'option "commit and push all changes"

[Source](https://github.com/gitobsidiantutorial/obsidian-git-tut-windows/blob/main/README.md)

</body>


# Où trouve t-on de l'aide le plus souvent à propos d'Obsidian

Quand on travaille avec Obisidian, assez fréquemment on est amené à chercher de l'information sur la syntaxe markdown, LaTeX ou Pandoc. Mais en ce qui concerne Obsidian lui-même, les deux sources d'information qui reviennent le plus souvent (hormis les tutos très nombreux et très utiles sur Youtube) sont : 

- le [forum d'Obsidian](https://forum.obsidian.md)
- le [canal consacré à Obsidian sur Reddit](https://www.reddit.com/r/ObsidianMD/)

# Bibliographie

1.

Tomaszczyk J, Matysek A. Digital Wisdom in Research Work. 2020 [cited 2021 Sep 29]; Available from: [https://rebus.us.edu.pl/handle/20.500.12128/18510](https://rebus.us.edu.pl/handle/20.500.12128/18510)

2.

Clear DB. Zettelkasten — How One German Scholar Was So Freakishly Productive [Internet]. The writing cooperative. 2021 [cited 2021 Sep 29]. Available from: [https://writingcooperative.com/zettelkasten-how-one-german-scholar-was-so-freakishly-productive-997e4e0ca125](https://writingcooperative.com/zettelkasten-how-one-german-scholar-was-so-freakishly-productive-997e4e0ca125)










