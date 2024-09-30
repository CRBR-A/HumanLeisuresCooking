find "." -type f -print0 | while read -d $'\0' fullfile
do
  echo "$fullfile"

  # rename file
  path="${fullfile%/*}"
  file="${fullfile##*/}"
  filename="${file%.*}"
  ext="${fullfile##*.}"
  
  if [[ "${ext}" == "png" || "${ext}" == "PNG" || "${ext}" == "jpg" || "${ext}" == "JPG" ]]; then
    `magick "${fullfile}" -resize 1024x1024\> "${filename}.jpg"`
  fi
done
