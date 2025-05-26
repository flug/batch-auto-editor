@echo off
setlocal

:: Entrée : dossier source (%1) et dossier output (%2)
set "INPUT_DIR=%~1"
set "OUTPUT_DIR=%~2"

:: Valeurs par défaut
if "%INPUT_DIR%"=="" set "INPUT_DIR=."
if "%OUTPUT_DIR%"=="" set "OUTPUT_DIR=output"

:: Création du dossier output s'il n'existe pas
if not exist "%OUTPUT_DIR%" (
    mkdir "%OUTPUT_DIR%"
)

:: Boucle sur les fichiers .mp4
for %%f in ("%INPUT_DIR%\*.mp4") do (
    echo Traitement de %%f
    auto-editor "%%f" --edit audio:threshold=-28dB --export premiere --output-file "%OUTPUT_DIR%\%%~nf.xml" --no-open
)

endlocal
