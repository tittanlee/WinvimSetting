REM Link the vimrc
mklink %USERPROFILE%\_vimrc %CD%\_vimrc

REM Link the Ctags.d
mklink /D %USERPROFILE%\ctags.d %CD%\ctags.d
