/bin/bash

# path to the file
filepath="./logrem.ps1"

# extracting file name from full file path
name="${filepath##*/}"

# extracting the size of a file
size=$(ls -lah $filepath |cut -d ' ' -f 5)

#displaying file name and file size
echo "FILE SIZE OF $name IS $size"