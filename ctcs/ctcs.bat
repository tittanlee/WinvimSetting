ECHO on
REM === del filenametags, cscope* and tags ===
del /F /Q tags cscope.*  cscope* GRTAGS GTAGS GPATH


REM === Generate cscope related files ===
REM dir /s /b  *.c *.h *.asi *.asx *.asl *.dsc *.dec *.bat *.config *.env *.asm *.s *.a *.mac *.lst *.i *.m4 *.ac *.in *.am *make* *.mk *.mak *.dsp *.dxs *.inf *.uni *.inc *.vfr *.fdf *GuidData* > cscope.files
REM ag -l --ignore *.exe;*.pdf;"InsydeH2O Build Notes.txt";"iASL Notice.txt" --ignore-dir Build . > cscope.files
ag -l --search-binary --ignore *.exe;*.pdf;*.zip;*.7z --ignore-dir Build . > cscope.files
copy cscope.files cscope.tag
REM sed -i  "s/^/\"/" cscope.files
REM sed -i  "s/$/\"/" cscope.files

REM === Generate file related tags ===
REM ctags -R --sort=foldcase  --C-kinds=+cefglmstpvx --fields=+iaS --extra=+q -L cscope.tag
REM ctags -R --sort=foldcase --language-force=C --C-kinds=+cdefglmstpvx --fields=+ianS  --extra=+f -L cscope.tag


REM === Start - Universal Ctags === 
REM ctags -R --sort=foldcase  --C-kinds=+defghlmstuvx --fields=+iaS --extras=+q -L cscope.tag
REM n will tell ctags add a line number filed in each tag record and S means including function signatures.
ctags -R --C-kinds=+defghlmpstuvxz --extras=+q --fields=+nS -L cscope.tag
REM === End   - Universal Ctags ===


del /F /Q sed* cscope.tag

REM ==== Start GTAGS ====
gtags -f cscope.files
REM ==== End GTAGS ====


REM === All compltet ===
PAUSE
