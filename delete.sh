#!/bin/sh

FILE=kill_file.txt

echo "$*" >> "$FILE"

sed -i '' 's/[[:space:]]\{1,\}/\n/g' "$FILE"

sed -i '' '/^$/d' "$FILE"

sort -o $FILE{,}
