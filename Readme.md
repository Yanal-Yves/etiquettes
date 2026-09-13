# 🏷️ Création de PDF d'étiquette de prix

**Pour la ressourcerie La Félicité à Andrésy.**

**Format :** 14 x 14 cm (soit 193 x 143 mm).

---

## 💡 Principe général et utilisation
Ce projet génère des PDF d'étiquettes de prix à partir de modèles HTML/CSS, optimisés pour l'impression sur feuilles étiquette 193 x 143 mm.

Chaque page de prix a sa page `.html` correspondante (à la racine du projet). Cette page HTML peut être éditée en fonction des besoins. L'HTML est particulièrement bien adapté à l'impression, notamment si l'on utilise les propriétés CSS adaptées (ex: utilisation des `pt`, `mm` ou `cm` comme unité de mesure).

L'application [Weasyprint](https://github.com/Kozea/WeasyPrint) permet de transformer les pages `.html` en fichier `.pdf`. Weasyprint est spécialement conçu pour générer des `.pdf` à partir de `.html` et respecte très bien les propriétés CSS spécifiques à l'impression (ce que ne fait pas forcément bien un navigateur web). C'est pourquoi visualiser les pages `.html` dans un navigateur n'a pas beaucoup de sens dans ce contexte.

Pour générer le fichier `.pdf` et voir le rendu, exécutez le script correspondant à votre système :

| Système | Commande d'exécution |
| :--- | :--- |
| **GNU/Linux** | `./GeneratePdf.bash` |
| **Windows** | Double-clic sur `GeneratePdf.cmd` |

Enfin, il suffit d'imprimer sur les papiers étiquettes avec une imprimante A4. En choisissant A4 comme taille de papier, il n'y aura pas de problème avec les marges.

## 🔌 Bande d'étiquettes pour tableau électrique
Le modèle `disjoncteurs.html` produit une bande d'étiquettes à glisser sous les disjoncteurs d'un tableau électrique.

**Format :** une bande de 23,4 x 2,6 cm découpée en **13 cases de 1,8 x 2,6 cm**, centrée sur une page A4 **en paysage**. Les cases étant plus hautes que larges, le texte est pivoté de 90° vers la gauche (il se lit de bas en haut). Pour changer les libellés, il suffit de modifier le texte des 13 `<span>`.

⚠️ **À l'impression, choisir « Taille réelle » (échelle 100 %), jamais « Ajuster à la page ».** Le mode « ajuster » réduit la page d'environ 4 % pour tenir dans la zone imprimable, et la bande sort à 22,4 cm au lieu de 23,4 cm. Un repère imprimé sous la bande permet de le vérifier à la règle : le trait doit mesurer exactement 10 cm. Une fois l'impression réglée, ce repère peut être supprimé (bloc `<div class="controle">`).

## ⚙️ Installation


### GNU/Linux
#### Prérequis
Pour fonctionner, Weasyprint a besoin des bibliothèques suivantes :
* **Python** $\ge 3.9.0$
* **Pango** $\ge 1.44.0$ (Pour le rendu de texte)

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
[L'exécutable Weasyprint](https://github.com/Kozea/WeasyPrint/releases) est déjà présent dans le répertoire. Pour des raisons de simplicité d'utilisation, l'installation n'est pas nécessaire (l'exécutable a été inclus).
