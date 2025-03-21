:: =============================================================================
:: Script de conversion automatique Steam
:: Version : 1.0.0
:: Date de création : 21/03/2025
:: GitHub : https://github.com/pauline-gr/SteamClipExporter
:: Description : Automatisation de l'export des clips Steam avec FFmpeg
:: =============================================================================
@echo off
setlocal enabledelayedexpansion

:: === PARAMETRES DU SCRIPT / SCRIPT SETTINGS
:: Choisir la langue : FR ou EN / Set the language: FR or EN
set "LANG=FR"
:: Activer/Désactiver le mode daltonien (1 = actif, 0 = inactif) / Enable/Disable colorblind mode (1 = enabled, 0 = disabled)
set "COLORBLIND=0"

:: === Activation des couleurs ANSI / Enable ANSI colors
:: Permet l'affichage de texte en couleur dans la console / Allows colored text display in the console
>nul prompt $E
for /f %%a in ('echo prompt $E ^| cmd') do set "ESC=%%a"

:: === CREATION DES DOSSIERS DE SORTIE / CREATE OUTPUT FOLDERS
set "SCRIPT_DIR=%~dp0"
set "EXPORT_ROOT=%SCRIPT_DIR%generated_mp4"
set "EXPORT_CLIPS=%EXPORT_ROOT%\clips"
set "EXPORT_VIDEOS=%EXPORT_ROOT%\video"
if not exist "%EXPORT_CLIPS%" mkdir "%EXPORT_CLIPS%"
if not exist "%EXPORT_VIDEOS%" mkdir "%EXPORT_VIDEOS%"

:: === SCAN DES DOSSIERS / SCAN FOLDERS
call :logInfo "Scanning folders" "Recherche des dossiers"
echo.

for /f "delims=" %%F in ('dir /s /b /ad "%SCRIPT_DIR%" ^| findstr /i "\\fg_"') do (
    if exist "%%F\init-stream0.m4s" (
        call :processFolder "%%F"
    )
)

call :logInfo "Done" "Termine"
pause
exit /b


:: === TRAITEMENT D'UN DOSSIER / PROCESS A FOLDER
:processFolder
setlocal enabledelayedexpansion
set "folder=%~1"

call :logInfo "Processing folder: !folder!" "Traitement du dossier : !folder!"

:: Extraire les noms des dossiers / Extract folder names
for %%D in ("!folder!") do (
    set "current=%%~nxD"
    for %%P in ("%%~dpD\.") do set "parent=%%~nxP"
)

set "final_name=!parent!!current!.mp4"

:: Determiner le dossier de sortie / Determine output folder
echo !folder! | findstr /i "\\clips\\" >nul
if !errorlevel! == 0 (
    set "export_path=%EXPORT_CLIPS%\!final_name!"
) else (
    set "export_path=%EXPORT_VIDEOS%\!final_name!"
)

:: Skip si déjà exporté / Skip if already exported
if exist "!export_path!" (
    call :logWarning "Skipped: already converted - !final_name!" "Passe : deja converti - !final_name!"
    echo.
    endlocal
    goto :eof
)

:: Entrer dans le dossier / Enter the folder
pushd "!folder!" >nul

:: === CONSTRUCTION DE LA CONCAT VIDEO / BUILD VIDEO CONCAT STRING
set "concat_video=concat:init-stream0.m4s"
for %%V in (chunk-stream0-*.m4s) do (
    set "concat_video=!concat_video!|%%V"
)

:: === CONSTRUCTION DE L’AUDIO SI PRESENT / BUILD AUDIO CONCAT STRING IF AVAILABLE
set "has_audio=0"
if exist "init-stream1.m4s" (
    set "has_audio=1"
    set "concat_audio=concat:init-stream1.m4s"
    for %%A in (chunk-stream1-*.m4s) do (
        set "concat_audio=!concat_audio!|%%A"
    )
)

:: === TEST D'ERREUR A SUPPRIMER SI BESOIN - DEBUT / OPTIONAL ERROR CHECK - START
dir /b chunk-stream0-*.m4s >nul 2>&1
if errorlevel 1 (
    call :logError "Missing video chunks - !folder!" "Fichiers video manquants - !folder!"
    popd >nul
    endlocal
    goto :eof
)
:: === TEST D'ERREUR A SUPPRIMER SI BESOIN - FIN / OPTIONAL ERROR CHECK - END

:: === EXPORT / RUN EXPORT
if !has_audio! EQU 1 (
    call :logInfo "Export with audio..." "Export avec audio..."
    ffmpeg -i !concat_video! -i !concat_audio! -c:v copy -c:a aac -b:a 128k -map 0:v:0 -map 1:a:0 -movflags faststart "!export_path!" >nul 2>&1
) else (
    call :logInfo "Export without audio..." "Export sans audio..."
    ffmpeg -i !concat_video! -c:v copy -an -movflags faststart "!export_path!" >nul 2>&1
)

popd >nul

if exist "!export_path!" (
    call :logSuccess "File exported: !final_name!" "Fichier exporte : !final_name!"
) else (
    call :logError "Export failed: !final_name!" "Echec export : !final_name!"
)

echo.
endlocal
goto :eof


:: === AFFICHAGE ERREUR EN ROUGE / DISPLAY ERROR IN RED
:logError
if "%COLORBLIND%"=="1" (
    echo %~2
    echo %~1
) else (
    if /i "%LANG%"=="FR" (
        echo !ESC![31m%~2!ESC![0m
    ) else (
        echo !ESC![31m%~1!ESC![0m
    )
)
exit /b

:: === AFFICHAGE OK EN VERT / DISPLAY SUCCESS IN GREEN
:logSuccess
if "%COLORBLIND%"=="1" (
    echo %~2
    echo %~1
) else (
    if /i "%LANG%"=="FR" (
        echo !ESC![32m%~2!ESC![0m
    ) else (
        echo !ESC![32m%~1!ESC![0m
    )
)
exit /b

:: === AFFICHAGE WARNING EN ORANGE / DISPLAY WARNING IN ORANGE
:logWarning
if /i "%COLORBLIND%"=="1" (
    echo %~1
    echo %~2
) else (
    echo !ESC![33m%~1!ESC![0m
    echo !ESC![33m%~2!ESC![0m
)
echo.
exit /b

:: === AFFICHAGE NEUTRE / DISPLAY INFO MESSAGE
:logInfo
if /i "%LANG%"=="FR" (
    echo %~2
) else (
    echo %~1
)
exit /b
