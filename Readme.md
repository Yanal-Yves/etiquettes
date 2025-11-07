Création de PDF d'étiquette de prix 14 x 14 (193 x 143)

# Principe général et utilisation
Chage page de prix à sa page `.html` correspondante. Cette page HTML peut être éditer en fonction des besoins. L'HTML est particulière bien adaptées à l'impression notament si on utilise les propriété CSS adapté (ex: utilisation des pt, mm ou cm comme unité de mesure).

L'application Weasyprint permet de transformer cette page `.html` en fichier `.pdf`. Weasyprint est spécialement conçu pour générer des `.pdf` à partir de `.html` et respecte très bien les propriété CSS spécifique au print (ce que ne fait pas forcément bien un navigateur web). C'est pourquoi visualiser les pages `.html` dans un navigateur n'a pas beaucoup de sens dans ce contexte. Pour voir le rendu il faut relancer le script `Generate.bash` sous GNU/Linux ou `GeneratePdf.cmd` (double clique) sous Windows.

Enfin il suffit d'imprimer sur les papiers étiquettes avec une imprimante A4. En choisissant A4 comme taille de papier, il n'y aura pas de problème avec les marges.

# Installation
## GNU/Linux
``` bash
python3 -m venv venv
source venv/bin/activate
pip install weasyprint
weasyprint --info
```

## Windows
The Weasyprint executable is already in the current folder.
