#!/bin/bash
set -e

OUTPUT_DIR="./Pdf"
FILES=("0.50-euro" "1-euro" "2-euros" "3-euros" "4-euros")

mkdir -p "$OUTPUT_DIR"
echo "Dossier $OUTPUT_DIR vérifié/créé."

# Activation de l'environnement virtuel (vérifie si 'venv' existe)
if [ -d "venv" ]; then
    source venv/bin/activate
    echo "Environnement virtuel activé."
else
    echo "Erreur : Dossier 'venv' non trouvé. Veuillez exécuter la procédure d'installation."
    exit 1
fi

echo "--- Démarrage de la génération des PDF ---"

for file in "${FILES[@]}"; do
    INPUT_HTML="${file}.html"
    OUTPUT_PDF="${OUTPUT_DIR}/${file}.pdf"

    echo "Traitement de $INPUT_HTML..."
    
    # Appel de Weasyprint. Le set -e en tête gère les erreurs.
    weasyprint --encoding utf-8 "$INPUT_HTML" "$OUTPUT_PDF"

    echo "Succès : $file.pdf généré."
done

echo "--- Génération terminée ---"

# Désactivation de l'environnement virtuel
deactivate