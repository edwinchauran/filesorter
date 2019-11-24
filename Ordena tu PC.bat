@echo off
:menu 
cls 
color b 
title Ordenador
echo           =======================

echo       NOTA: este .bat hay que ejecutarlo
echo           dentro del directorio en 
echo           el que se desea actuar.
echo           ======================= 
echo. 
echo BIENVENIDO %USERNAME% 
ECHO. 
ECHO ELIJE UNA OPCION... 
ECHO. 
ECHO ============================================================
ECHO = 1. Ordenar todo por extensiones (jpg, mp4, .txt)        == 
ECHO = 2. Ordenar Personalizado                                ==
ECHO = 3. Sacar todo a la raiz                                 == 
ECHO = 4. COPIAR DE PC A USB                                   == 
ECHO = 5. SALIR                                                == 
ECHO ============================================================ 
ECHO. 
SET /P ver= QUE DESEA HACER? 
if %ver%==1 goto opcion1
if %ver%==2 goto opcion2 
if %ver%==3 goto opcion3
if %ver%==4 goto copiar_usb
if %ver%==5 goto salir ELSE 
(
cls
goto error )

:opcion1 
echo.
echo =======================
echo Nota: si es en la misma carpeta solo nombre de carpeta.
ECHO NO importa si el nombre carpeta lleva espacios.
echo =======================
echo.

	::IMAGENES
IF EXIST *.jpg (MKDIR imagenes)
	for /R %%x in (*.png) do move "%%x" imagenes

IF EXIST *.png (MKDIR imagenes)
	for /R %%x in (*.jpg) do move "%%x" imagenes

IF EXIST *.gif (MKDIR imagenes)
	for /R %%x in (*.gif) do move "%%x" imagenes

IF EXIST *.psd (MKDIR photoshop)
	for /R %%x in (*.psd) do move "%%x" photoshop

IF EXIST *.bmp (MKDIR imagenes)
	for /R %%x in (*.bmp) do move "%%x" imagenes

IF EXIST *.ico (MKDIR imagenes)
	for /R %%x in (*.ico) do move "%%x" imagenes


	::VIDEOS
IF EXIST *.mp4 (MKDIR videos)
	for /R %%x in (*.mp4) do move "%%x" videos

IF EXIST *.wmv (MKDIR videos)
	for /R %%x in (*.wmv) do move "%%x" videos

IF EXIST *.3gp (MKDIR videos)
	for /R %%x in (*.3gp) do move "%%x" videos	

IF EXIST *.avi (MKDIR videos)
	for /R %%x in (*.avi) do move "%%x" videos

IF EXIST *.mpg (MKDIR videos)
	for /R %%x in (*.mpg) do move "%%x" videos

IF EXIST *.mkv (MKDIR videos)
	for /R %%x in (*.mkv) do move "%%x" videos

IF EXIST *.mov (MKDIR videos)
	for /R %%x in (*.mov) do move "%%x" videos


	::MUSICA
IF EXIST *.mp3 (MKDIR musica)
	for /R %%x in (*.mp3) do move "%%x" musica

IF EXIST *.wma (MKDIR musica)
	for /R %%x in (*.wma) do move "%%x" musica

IF EXIST *.ogg (MKDIR musica)
	for /R %%x in (*.ogg) do move "%%x" musica

IF EXIST *.acc (MKDIR musica)
	for /R %%x in (*.acc) do move "%%x" musica

	
	::TEXTO
IF EXIST *.txt (MKDIR texto)
	for /R %%x in (*.txt) do move "%%x" texto


	::OTROS ARCHIVOS
IF EXIST *.svg (MKDIR SVG)
	for /R %%x in (*.svg) do move "%%x" SVG
	
IF EXIST *.blend (MKDIR "Blender Projects")
	for /R %%x in (*.blend) do move "%%x" "Blender Projects"

IF EXIST *.aup (MKDIR Audacity)
	for /R %%x in (*.aup) do move "%%x" Audacity

IF EXIST *.db (MKDIR Shit)
	for /R %%x in (*.db) do move "%%x" Shit

IF EXIST *.ttf (MKDIR Fonts)
	for /R %%x in (*.ttf) do move "%%x" Fonts

IF EXIST *.otf (MKDIR Fonts)
	for /R %%x in (*.otf) do move "%%x" Fonts

IF EXIST *.pdf (MKDIR PDF)
	for /R %%x in (*.pdf) do move "%%x" PDF

IF EXIST *.doc (MKDIR Word)
	for /R %%x in (*.doc) do move "%%x" Word

IF EXIST *.docx (MKDIR Word)
	for /R %%x in (*.docx) do move "%%x" Word

IF EXIST *.rar (MKDIR Rar)
	for /R %%x in (*.rar) do move "%%x" Rar

IF EXIST *.zip (MKDIR Rar)
	for /R %%x in (*.zip) do move "%%x" Rar

IF EXIST *.exe (MKDIR Programas)
	for /R %%x in (*.exe) do move "%%x" Programas

IF EXIST *.msi (MKDIR Programas)
	for /R %%x in (*.msi) do move "%%x" Programas

IF EXIST *.xlsx (MKDIR Excel)
	for /R %%x in (*.xlsx) do move "%%x" Excel

IF EXIST *.iso (MKDIR "Imagenes Iso")
	for /R %%x in (*.iso) do move "%%x" "Imagenes Iso"

IF EXIST *.htm (MKDIR "Otras cosas")
	for /R %%x in (*.htm) do move "%%x" "Otras cosas"

IF EXIST *.html (MKDIR "Otras cosas")
	for /R %%x in (*.html) do move "%%x" "Otras cosas"


	::ANDROID
IF EXIST *.apk (MKDIR "Aplicaciones Android")
	for /R %%x in (*.apk) do move "%%x" "Aplicaciones Android"

mkdir "Archivos Ordenados"
move "Blender Projects" "Archivos Ordenados"
move SVG "Archivos Ordenados"
move Audacity "Archivos Ordenados"
move Shit "Archivos Ordenados"
move Fonts "Archivos Ordenados"
move "Otras cosas" "Archivos Ordenados"
move Excel "Archivos Ordenados"
move imagenes "Archivos Ordenados"
move musica "Archivos Ordenados"
move "Aplicaciones Android" "Archivos Ordenados"
move "Imagenes Iso" "Archivos Ordenados"
move Programas "Archivos Ordenados"
move Rar "Archivos Ordenados"
move Word "Archivos Ordenados"
move PDF "Archivos Ordenados"
move texto "Archivos Ordenados"
move videos "Archivos Ordenados"
move photoshop "Archivos Ordenados"

goto finished

:opcion2
cls
echo.
echo ###Escriba (s) para volver
set /p extension = Introduce la extension a copiar,con el punto ejemplo "JPG":
 	IF %extension% == s goto menu 
	
IF %extension% == .jpg goto opcion1_1
IF  %extension% == .png goto opcion1_1
IF  %extension% == .gif  goto opcion1_1
IF  %extension% == .mp3  goto opcion1_1
IF  %extension% == .mp4 goto opcion1_1
IF  %extension% == .wmv goto opcion1_1
IF  %extension% == .wma goto opcion1_1
IF  %extension% == .mkv goto opcion1_1
IF  %extension% == .docx goto opcion1_1
IF  %extension% == .doc goto opcion1_1
IF  %extension% == .acc goto opcion1_1
IF  %extension% == .ogg goto opcion1_1
IF  %extension% == .txt goto opcion1_1
IF  %extension% == .pdf goto opcion1_1
IF  %extension% == .exe goto opcion1_1
IF  %extension% == .3gp goto opcion1_1
IF  %extension% == .mpg goto opcion1_1
IF  %extension% == .iso goto opcion1_1
IF  %extension% == .rar goto opcion1_1
IF  %extension% == .zip goto opcion1_1
IF  %extension% == .apk goto opcion1_1
IF  %extension% == .psd goto opcion1_1
IF  %extension% == .iso goto opcion1_1
IF  %extension% == .xls goto opcion1_1
	IF %extension% == s goto menu ELSE
( 
goto error)

:opcion1_1
cls
echo.
echo =======================
echo Nota: si es en la misma carpeta solo nombre de carpeta.
ECHO NO importa si el nombre carpeta lleva espacios.
echo =======================
echo. 
echo Escriba (no) para volverr
set /p destino=Intro Ruta Carpeta Destino sin comillas:
	IF %destino% == no goto menu
	
mkdir "%destino%"
for /R %%x in (*%extension%) do move "%%x" "%destino%" 
goto finished

:opcion3


cls
echo.
	::IMAGENES
for /R %%x in (*.png) do move "%%x" 
for /R %%x in (*.jpg) do move "%%x" 
for /R %%x in (*.gif) do move "%%x" 
for /R %%x in (*.psd) do move "%%x"
	::VIDEOS

for /R %%x in (*.mp4) do move "%%x" 	
for /R %%x in (*.wmv) do move "%%x" 
for /R %%x in (*.3gp) do move "%%x" 
for /R %%x in (*.avi) do move "%%x" 
for /R %%x in (*.mpg) do move "%%x" 
for /R %%x in (*.mkv) do move "%%x" 

	::MUSICA

for /R %%x in (*.mp3) do move "%%x" 
for /R %%x in (*.wma) do move "%%x" 
for /R %%x in (*.ogg) do move "%%x" 
for /R %%x in (*.acc) do move "%%x" 
	
	::TEXTO

for /R %%x in (*.txt) do move "%%x" 

	::OTROS ARCHIVOS

for /R %%x in (*.pdf) do move "%%x" 
for /R %%x in (*.doc) do move "%%x" 
for /R %%x in (*.docx) do move "%%x" 
for /R %%x in (*.rar) do move "%%x" 
for /R %%x in (*.zip) do move "%%x" 
for /R %%x in (*.exe) do move "%%x" 
for /R %%x in (*.iso) do move "%%x" 
for /R %%x in (*.xls) do move "%%x"
	::ANDROID

for /R %%x in (*.apk) do move "%%x"  
goto finished
	
:copiar_usb

cls
echo.
echo.
:: INTROCE EXTENSION JPG, PNG
echo Escriba (s) para volver
set /p extension=Introduce la extension a copiar, con el punto ejemplo ".xls": 
IF %extension% == s goto menu

	::ERROR
IF %extension% == .jpg goto copiar_usb_1
IF  %extension% == .png goto copiar_usb_1
IF  %extension% == .gif  goto copiar_usb_1
IF  %extension% == .mp3  goto copiar_usb_1
IF  %extension% == .mp4 goto copiar_usb_1
IF  %extension% == .wmv goto copiar_usb_1
IF  %extension% == .wma goto copiar_usb_1
IF  %extension% == .mkv goto copiar_usb_1
IF  %extension% == .docx goto copiar_usb_1
IF  %extension% == .doc goto copiar_usb_1
IF  %extension% == .acc goto copiar_usb_1
IF  %extension% == .ogg goto copiar_usb_1
IF  %extension% == .txt goto copiar_usb_1
IF  %extension% == .pdf goto copiar_usb_1
IF  %extension% == .exe goto copiar_usb_1
IF  %extension% == .3gp goto copiar_usb_1
IF  %extension% == .mpg goto copiar_usb_1
IF  %extension% == .iso goto copiar_usb_1
IF  %extension% == .rar goto copiar_usb_1
IF  %extension% == .zip goto copiar_usb_1
IF  %extension% == .apk goto copiar_usb_1
IF  %extension% == .psd goto copiar_usb_1
IF  %extension% == .iso goto copiar_usb_1 
IF  %extension% == .xls goto copiar_usb_1 ELSE
( 
goto error)

:copiar_usb_1
cls
::Script que visualiza las unidades 
for %%_ in (a, b, d, e, f, g, h, i, j, k, l, m, n, o, p, q, s, t, u, v, w, x, y, z) do (
		dir /b %%_:\ > nul 2>&1 && (
		::dir %%_:\ > nul 2>&1 && (
			echo.
			echo.
			echo.
			echo Unidad "%%_:" detectada
		)
)
::selecionar unidad
echo.
echo Escriba (no) para volver
set /p usb= escriba la LETRA a recibir copias: 
	IF %usb% ==no goto menu
::ALGORITMO

for /R %%x in (*%extension%) do copy "%%x" %usb%:\
%usb%:
IF NOT EXIST ("Archivos Recibidos") (MKDIR "Archivos Recibidos")
	for /R %%x in (*%extension%) do move "%%x" "Archivos Recibidos"
goto finished
	
::FIN DE USB___________________________
:error 

cls
ECHO.
ECHO.
ECHO.
ECHO   ############    OPCION INCORRECTA       ################
ECHO   ############    OPCION INCORRECTA       ################
ECHO   ############    OPCION INCORRECTA       ################
ECHO   ############    OPCION INCORRECTA       ################
ECHO.
pause
goto menu

:finished

cls
ECHO.
ECHO.
ECHO.
ECHO   ############ ORDENADO SATISFATORIAMENTE ################
ECHO   ############ ORDENADO SATISFATORIAMENTE ################
ECHO   ############ ORDENADO SATISFATORIAMENTE ################
ECHO   ############ ORDENADO SATISFATORIAMENTE ################
ECHO.
pause
goto menu

:salir 
exit 

