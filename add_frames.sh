# 
# Add a frame to the images 
# 
# 
# set -v -x 

GEN_IMG_DIR="withframe_${RANDOM}"

mkdir $GEN_IMG_DIR

echo "Creating the ${GEN_IMG_DIR}..." 
echo "Starting conversion " 

for fil in `ls *.jpg`  ; 
do 
	name=${fil%.*}; 
	convert -frame 20x20  -mattecolor white   $fil ${GEN_IMG_DIR}/${name}.jpg; 
done 

echo "Done converting" 
echo "in the dir ${GEN_IMG_DIR}" 

