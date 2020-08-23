#!/bin/bash
filename="$1"
old="$filename"

removepre="$2"
filename="${filename#"$removepre"}"

removesuf="$3"
extension="${filename##*.}"            ### store extension in a variable.
filename="${filename%.*}"              ### remove extension.
filename="${filename%"$removesuf"}"    ### remove suffix.
filename="Hatim.S01E""$filename"".480p.$extension"        ### re-place the extension
echo "$filename"
#mv $old $filename

