@echo off
call "%~dp0\o4w_env.bat"
call py3_env.bat
call qt5_env.bat
@echo off
path %PATH%;%OSGEO4W_ROOT%\apps\qgis\bin
path %PATH%;%OSGEO4W_ROOT%\apps\Qt5\bin
path %PATH%;%OSGEO4W_ROOT%\apps\Python36\Scripts

rem o4w_env.bat starts with a clean path, so add what you need
path %PATH%;C:\Users\Frank\bin
path %PATH%;C:\Program Files\7-Zip
path %PATH%;C:\ProgramData\chocolatey\bin
path %PATH%;C:\Program Files\Git\cmd
path %PATH%;C:\Program Files\nodejs\

set QGIS_PREFIX_PATH=%OSGEO4W_ROOT:\=/%/apps/qgis
set GDAL_FILENAME_IS_UTF8=YES
rem Set VSI cache to be used as buffer, see #6448
set VSI_CACHE=TRUE
set VSI_CACHE_SIZE=1000000
set QT_PLUGIN_PATH=%OSGEO4W_ROOT%\apps\qgis\qtplugins;%OSGEO4W_ROOT%\apps\qt5\plugins

set PYTHONPATH=%PYTHONPATH%;%OSGEO4W_ROOT%\apps\qgis\python\
set PYTHONPATH=%PYTHONPATH%;%OSGEO4W_ROOT%\apps\qgis\python\qgis
set PYTHONPATH=%PYTHONPATH%;%OSGEO4W_ROOT%\apps\qgis\python\qgis\PyQt

path %PATH%;%OSGEO4W_ROOT%

start /d "C:\Program Files\Microsoft VS Code\" Code.exe