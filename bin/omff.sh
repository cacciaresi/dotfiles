#!/bin/bash

extensions=(rar zip djvu pdf epub gz img txt)

function move_files() {
    echo "Moving ${var} files to ${var}/"
    mkdir -p ${var}
    mv *.${var} ${var}
}

for var in "${extensions[@]}"
do
    [ "$(find . -maxdepth 1 -name "*.${var}" -print -quit)" ] && move_files ${var}
done
