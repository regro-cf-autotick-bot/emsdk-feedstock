:: Construct %SCRIPTS%\emsdk
copy /Y %RECIPE_DIR%\emsdk %SCRIPTS%\emsdk
if errorlevel 1 exit 1

:: Construct the emsdk Python module
mkdir %PREFIX%\lib\site-packages\emsdk
xcopy * %PREFIX%\lib\site-packages\emsdk /E
type nul > %PREFIX%\lib\site-packages\emsdk\__init__.py
if errorlevel 1 exit 1
