ECHO on
REM === del filenametags, cscope* and tags ===
del /F /Q tags cscope.*  cscope*


REM === Generate cscope related files ===
REM dir /s /b  *.c *.h *.asi *.asx *.asl *.dsc *.dec *.bat *.config *.env *.asm *.s *.a *.mac *.lst *.i *.m4 *.ac *.in *.am *make* *.mk *.mak *.dsp *.dxs *.inf *.uni *.inc *.vfr *.fdf *GuidData* > cscope.files
REM ag -l --ignore *.exe;*.pdf;"InsydeH2O Build Notes.txt";"iASL Notice.txt" --ignore-dir Build . > cscope.files
ag -l --search-binary --ignore *.exe;*.pdf; --ignore-dir Build . > cscope.files
copy cscope.files cscope.tag
sed -i  "s/^/\"/" cscope.files
sed -i  "s/$/\"/" cscope.files

REM === Generate file related tags ===
REM ctags -R --sort=foldcase --c++-kinds=+p --fields=+iaS --extra=+q *
ctags -R --sort=foldcase  --C-kinds=+lpx --fields=+iaS --extra=+q -L cscope.tag
REM ctags -R --sort=foldcase --c++-kinds=+p --fields=+iaS --extra=+q -L cscope.tag
del /F /Q sed* cscope.tag

cscope -bk -i cscope.files

REM === All compltet ===
PAUSE
