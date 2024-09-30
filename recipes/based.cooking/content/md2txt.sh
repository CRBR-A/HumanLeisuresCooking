find . -name "*.md" -print0 | while read -d $'\0' fullfile
do
  # rename file
  path="${fullfile%/*}"
  file="${fullfile##*/}"
  # rename extension
  mv "$fullfile" "${file%.*}.txt"
done
