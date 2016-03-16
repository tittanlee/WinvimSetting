set ORIGPATH=%PATH%
echo %ORIGPATH%

E:
CD E:\DEVTLS\BAT
CALL SETENV EFI E:\shell FW Platform\IntelSsg\Nt32\Build VC7

PATH=%ORIGPATH%;%PATH%
E:
cd E:\Shell\Fw
gvim
