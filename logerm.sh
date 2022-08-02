
#!/bin/bash

while getopts p:m: flag;
do
    case $flag in
        p) filepath=$OPTARG;;
        m) maxSize=$OPTARG;;
    esac
done

declare -i size=0
size=$(stat -c%s "$filepath")


#displaying file name and file size
if [ $size -gt $maxSize ]
then
	echo "file size exceeding maximum permissible size"
	echo $size
	rm -f $filepath
	echo "file deleted successfully"
else
	echo "file size not exceeding maximum permissible size"
	echo $size
fi
