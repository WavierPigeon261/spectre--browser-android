#!/bin/bash

# FILE_LIST=/home/lg/working_dir/file_list.txt
# OUTPUT_DIR=~/Spectre Browser/tools/under-control/src/

if [ -z "$CHR_SOURCE_DIR" ]; then
   echo "CHR_SOURCE_DIR is empty"
    exit 1
fi

if [ -z "$OUTPUT_DIR" ]; then
   echo "OUTPUT_DIR is empty"
    exit 1
fi

if [ -z "$FILE_LIST" ]; then
   echo "FILE_LIST is empty"
    exit 1
fi

mkdir -p $OUTPUT_DIR

pushd $CHR_SOURCE_DIR > /dev/null

echo Getting files
cat $FILE_LIST

cat $FILE_LIST | while read current_file
do
    if [[ $current_file =~ ^#.* ]]; then
        : # skip comments

    elif [ ! -z "$current_file" ]; then
        SPLITS=(${current_file//;/ })
        DIR_NAME=${SPLITS[1]}

        if [ ! -z "$DIR_NAME" ]
        then

            echo Copy ${SPLITS[0]} of $DIR_NAME
            find $DIR_NAME -name ${SPLITS[0]} -exec install -D '{}' $OUTPUT_DIR{} \;

        else

            echo Copy $current_file
            install -D $current_file $OUTPUT_DIR/$current_file

        fi

    fi

done

popd > /dev/null
