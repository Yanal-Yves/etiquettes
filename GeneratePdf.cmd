@echo off
SETLOCAL EnableDelayedExpansion

set "OUTPUT_DIR=.\Pdf"
set "WEASYPRINT_EXE=weasyprint.exe"

set "FILES_TO_PROCESS=0.50-euro 1-euro 2-euros 3-euros 4-euros disjoncteurs"

if not exist "%OUTPUT_DIR%\" (
    mkdir "%OUTPUT_DIR%"
    echo Le dossier "%OUTPUT_DIR%" a ete cree.
) else (
    echo Le dossier "%OUTPUT_DIR%" existe deja.
)

echo.
echo --- Demarrage de la generation des PDF ---

:: Le jeton "%%f" contient le nom du fichier (ex: 0.50-euro)
for %%f in (%FILES_TO_PROCESS%) do (
    set "INPUT_HTML=%%f.html"
    set "OUTPUT_PDF=%%f.pdf"
    
    :: Afficher le fichier en cours de traitement
    echo Traitement de !INPUT_HTML! ...
    
    :: Appel de Weasyprint
    "%WEASYPRINT_EXE%" --encoding utf-8 "!INPUT_HTML!" "%OUTPUT_DIR%\!OUTPUT_PDF!"
    
    :: Vérification de l'erreur (si Weasyprint renvoie un code d'erreur)
    if errorlevel 1 (
        echo ERREUR : La generation de !OUTPUT_PDF! a echoue.
    ) else (
        echo Succes : !OUTPUT_PDF! genere.
    )
)

echo.
echo --- Generation terminee ---
pause