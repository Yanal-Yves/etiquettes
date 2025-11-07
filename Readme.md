# 🏷️ Création de PDF d'étiquette de prix

**Pour la ressourcerie La Félicité à Andrésy.**

**Format :** 14 x 14 cm (soit 193 x 143 mm).

---

## 💡 Principe général et utilisation
Ce projet génère des PDF d'étiquettes de prix à partir de modèles HTML/CSS, optimisés pour l'impression sur feuilles étiquette 193 x 143 mm.

Chaque page de prix a sa page `.html` correspondante. Cette page HTML peut être éditée en fonction des besoins. L'HTML est particulièrement bien adapté à l'impression, notamment si l'on utilise les propriétés CSS adaptées (ex: utilisation des `pt`, `mm` ou `cm` comme unité de mesure).

L'application [Weasyprint](https://github.com/Kozea/WeasyPrint) permet de transformer les pages `.html` en fichier `.pdf`. Weasyprint est spécialement conçu pour générer des `.pdf` à partir de `.html` et respecte très bien les propriétés CSS spécifiques à l'impression (ce que ne fait pas forcément bien un navigateur web). C'est pourquoi visualiser les pages `.html` dans un navigateur n'a pas beaucoup de sens dans ce contexte.

Pour générer le fichier `.pdf` et voir le rendu, exécutez le script correspondant à votre système :

| Système | Commande d'exécution |
| :--- | :--- |
| **GNU/Linux** | `./Generate.bash` |
| **Windows** | Double-clic sur `GeneratePdf.cmd` |

Enfin, il suffit d'imprimer sur les papiers étiquettes avec une imprimante A4. En choisissant A4 comme taille de papier, il n'y aura pas de problème avec les marges.

## ⚙️ Installation


### GNU/Linux
#### Prérequis
* Python >= 3.9.0 (pour l'installation sous GNU/Linux).
* Pango ≥ 1.44.0

L'installation de Weasyprint se fait dans un environnement virtuel Python :
``` bash
# Création de l'environnement virtuel
python3 -m venv venv
# Activation de l'environnement virtuel
source venv/bin/activate
# Installation de Weasyprint
pip install weasyprint
# Vérification de l'installation et des dépendances
weasyprint --info
```

### Windows
[L'exécutable Weasyprint](https://github.com/Kozea/WeasyPrint/releases) est déjà présent dans le répertoire et ne nécessite pas d'installation.
