#!​/bin/bash 
​#​ makelib by Platin Developmentstudios 
#​ Copyright (C) 2020 - 2022 Platin Developmentstudios 

SOURCEFILE=/path/to/source.c
OBJFILENAME=/path/to/obj.o
SHAREDLIBNAME=libName.so
ARCHIVENAME=libName.a

​echo​ ----------------------- 
echo​ Creating Libary File... 
echo​ ----------------------- 
​gcc -c -Wall -Werror -fpic $SOURCEFILE
echo​ -------------------------------- 
​echo​ Ready​!​ Creating Shared Libary... 
echo​ -------------------------------- 
gcc -shared -o $SHAREDLIBNAME $OBJFILENAME
echo -------------------------- 
echo Ready! Creating Archive...
echo --------------------------
ar -rsc $ARCHIVENAME $OBJFILENAME
echo​ ------------------------------ 
echo​ Ready​!​ Cleaning up .o files... 
​echo​ ------------------------------ 
​rm -r $OBJFILENAME 
echo​ ----------------------------------- 
​echo​ Ready​!​ Output file: $SHAREDLIBNAME
​echo​ -----------------------------------
