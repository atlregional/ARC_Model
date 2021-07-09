
rem # delete all files from the folder except those in filesToKeep.txt
rem # Ben Stabler, stabler@pbworld.com, 09/28/12

rem # expand wildcards to all files
FOR /F %%j in (filesToKeep.txt) do ( dir /B %%j ) >> filesToKeep.txt

rem # attribute all files to keep as read-only
FOR /F %%j in (filesToKeep.txt) do ( attrib +r %%j )

rem # delete all non-tagged files
DEL /Q *.*

rem # return kept files to read, write, delete status
FOR /F %%j in (filesToKeep.txt) do ( attrib -r %%j )
