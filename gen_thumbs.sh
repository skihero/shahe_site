# To create thumbnails out of all the jpg s in the directory 
# 
# 
 set -v -x 

THUMBS_DIR="thumbs_${RANDOM}"

mkdir $THUMBS_DIR

echo "Creating the ${THUMBS_DIR}..." 
echo "Starting conversion " 

for fil in `ls *.jpg`  ; 
do 
name=${fil%.*}; 
convert -thumbnail 200 $fil ${THUMBS_DIR}/${name}_thumb.jpg; 
done 
echo "Done converting" 
echo "Thumbs in the dir ${THUMBS_DIR}" 



