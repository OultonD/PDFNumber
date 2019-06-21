# based on the work in https://tex.stackexchange.com/a/18776

#remove any previously generated text files
rm -rf $1-*

convert $1.pdf -deskew 80% png:$1
for f in $1-*; do 
#rotate "deg" negative numbers = ccw
convert $f -flatten -strip -resize 1X1000!\
 -black-threshold 99% -white-threshold 10% -negate -morphology Erode Diamond\
 -define morphology:compose=Darken\
 -morphology Thinning:-1 '1x3:0,1,1' -black-threshold 50% txt:-\
| sed -e '1d' -e '/#000000/d' -e 's/^[^,]*,//' -e 's/[(]//g' -e 's/:.*//' -e 's/,/ /g' > $f.txt;
done
