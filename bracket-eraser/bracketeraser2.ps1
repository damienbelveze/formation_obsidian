##[Ps1 To Exe]
##
##Kd3HDZOFADWE8uK1
##Nc3NCtDXThU=
##Kd3HFJGZHWLWoLaVvnQnhQ==
##LM/RF4eFHHGZ7/K1
##K8rLFtDXTiW5
##OsHQCZGeTiiZ4tI=
##OcrLFtDXTiW5
##LM/BD5WYTiiZ4tI=
##McvWDJ+OTiiZ4tI=
##OMvOC56PFnzN8u+Vs1Q=
##M9jHFoeYB2Hc8u+Vs1Q=
##PdrWFpmIG2HcofKIo2QX
##OMfRFJyLFzWE8uK1
##KsfMAp/KUzWJ0g==
##OsfOAYaPHGbQvbyVvnQX
##LNzNAIWJGmPcoKHc7Do3uAuO
##LNzNAIWJGnvYv7eVvnQX
##M9zLA5mED3nfu77Q7TV64AuzAgg=
##NcDWAYKED3nfu77Q7TV64AuzAgg=
##OMvRB4KDHmHQvbyVvnQX
##P8HPFJGEFzWE8tI=
##KNzDAJWHD2fS8u+Vgw==
##P8HSHYKDCX3N8u+Vgw==
##LNzLEpGeC3fMu77Ro2k3hQ==
##L97HB5mLAnfMu77Ro2k3hQ==
##P8HPCZWEGmaZ7/K1
##L8/UAdDXTlGDjpra7jFL4UnrTn4udMCnnbO0z5Wz79buqSTaQp8ABFFllzr5Fne/S/MRXvABscMQRhg4YfcT59I=
##Kc/BRM3KXhU=
##
##
##fd6a9f26a06ea3bc99616d4851b372ba
# présentation du logiciel

$PSDefaultParameterValues['Out-File:Encoding'] = 'utf8'
$PSDefaultParameterValues['*:Encoding'] = 'utf8'

Write-Host "ce programme va vous permettre de convertir une note en markdown en fichier PDF avec les citations qu'elle contient" -ForegroundColor blue

# pause pour permettre à l'utilisateur de lire la présentation

read-host "appuyer sur Enter pour continuer..."

# sélection du répertoire de notes de l'utilisateur avec l'explorateur Windows

Write-Host "choisir le repertoire qui contient les notes" -ForegroundColor Green
Add-Type -AssemblyName System.Windows.Forms
$browser = New-Object System.Windows.Forms.FolderBrowserDialog
$null = $browser.ShowDialog()
$path = $browser.SelectedPath
Set-Location $path

# si le dossier mypdf n'existe pas encore dans le répertoire de notes, il sera créé automatiquement

If(!(test-path $path\mypdf))
{
      New-Item -ItemType Directory -Force -Path $path\mypdf
}

# sélection de la note à exporter en PDF

$file = @(Get-ChildItem -recurse | where {$_.extension -eq ".md"} | Out-GridView -Title 'sélectionner une note à convertir' -PassThru)
$filename = $file.basename




$Answer = Read-Host -Prompt 'Voulez-vous charger une feuille de style CSL (o/n)'
    }
    Until ($Answer -eq 'o' -or $Answer -eq 'n')
}

if ($answer -eq 'o' ) {

$FileBrowser = New-Object System.Windows.Forms.OpenFileDialog -Property @{
    InitialDirectory = [Environment]::GetFolderPath('Desktop')
    Filter = 'Documents (*.csl)|*.csl')
$null = $FileBrowser.ShowDialog()
$biblio = $FileBrowser.Filename;
}
else {

# identification du fichier qui comporte les références bibliographiques

$biblio = @(Get-ChildItem -recurse | where {$_.extension -eq ".bib"} | Out-GridView -Title 'sélectionner un fichier de références' -PassThru)

}

read-host "appuyer sur Enter pour continuer..."


# si le dossier csl n'existe pas encore dans le répertoire de notes, il sera créé automatiquement
# dans ce cas, on y chargera automatiquement depuis le site de Zotero trois feuilles de style (ieee, nature et Vancouver)

If(!(test-path $path\csl))
{
      New-Item -ItemType Directory -Force -Path $path\csl
Invoke-WebRequest -Uri "https://www.zotero.org/styles/vancouver" -OutFile $path\csl\vancouver.csl
Invoke-WebRequest -Uri "https://www.zotero.org/styles/ieee" -OutFile $path\csl\ieee.csl
Invoke-WebRequest -Uri "https://www.zotero.org/styles/nature" -OutFile $path\csl\nature.csl
}

$style = @(Get-ChildItem $path\csl | where {$_.extension -eq ".csl"} | Out-GridView -Title 'choisir un style parmi les suivants' -PassThru) | % { $_.FullName }



# conversion de la note avec pandoc et suppression des wikiliens

(Get-content .\$filename.md -Raw).replace("[[","").replace("]]","") | Set-content mypdf\$filename.md

pandoc mypdf\$filename.md --bibliography=$biblio --csl=$style --pdf-engine=xelatex --citeproc -f markdown+smart -o mypdf\$filename.pdf

# impression de la commande pandoc dans un fichier distinct

$command = {pandoc mypdf\$filename.md --bibliography=$biblio --csl=$style --pdf-engine=xelatex --citeproc -f markdown+smart -o mypdf\$filename.pdf}

echo $command > mypdf\$filename.txt

# suppression du fichier markdown dans mypdf correspondant à la note exportée en pdf

Remove-Item mypdf\$filename.md

Write-Host "le pdf de la note se trouve dans votre le dossier mypdf" -ForegroundColor blue
