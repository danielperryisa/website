QUALITY=10

for png_file in ./*.png
do
  jpg_file="${png_file%.png}.jpg"
  convert $png_file $jpg_file && jpegoptim $jpg_file --max=$QUALITY;
done