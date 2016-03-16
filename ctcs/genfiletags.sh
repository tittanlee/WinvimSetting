#!/bin/sh
echo -e "!_TAG_FILE_SORTED\t2\t/2=foldcase/" > filenametags
true_find . -not -regex '.*\.\(png\|gif\)' ! -path "*svn*" ! -path "*uefi64*" -type f -printf "%f\t%p\t1\n" | true_sort -f >> filenametags
