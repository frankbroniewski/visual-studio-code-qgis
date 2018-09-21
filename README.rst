OSGeo4W batch file for MS Visual Studio Code
============================================

Purpose
-------
This batch file sets all the necessary environment variables for 
developing QGIS plugins and processing scripts with Microsoft's 
`Visual Studio Code <https://code.visualstudio.com/>`_.

The setup is targeted for developing QGIS 3 plugins and scripts, so that
autocomplete and code sense (intellisense) work.

In some cases it might be necessary to whitelist the PyQT5 and qgis modules. Pylint does not check all C-modules by default, a security measure. To do so you can add the following line to your .pylintrc configuration file:

| extension-pkg-whitelist=PyQt5,qgis

See the pylint documentation for more information on how to do that: https://docs.pylint.org/en/1.6.0/features.html
