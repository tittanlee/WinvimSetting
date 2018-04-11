chcp 65001
@echo off
echo Eport GitDiff
set /p input1=Export Start Commit ID: 
set commitIdStart=%input1%
echo Start ID = %commitIdStart%

for /f "usebackq tokens=*" %%A in (`git diff-tree -r --no-commit-id --name-only --diff-filter=ACMRT %commitIdStart%`) do echo FA|xcopy "%%~fA" "D:\temp\GitExport\%commitIdStart%\%%A"
set /p DUMMY =Hit Enter To Continue....
