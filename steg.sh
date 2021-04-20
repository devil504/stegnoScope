#!/bin/bash
#colors
reset="\e[0m"
red="\e[0;31m"
green="\e[0;32m"
cyan="\e[0;36m"
blue="\e[0;34m"
ylw="\e[1;33m"
pink="\e[0;35m"
lg="\e[1;32m"
echo -e "
                           ███
                         ███
                        ██
                       ██
                      ███
             █████████████████████
          ███████████████████████████
        ███████████████░███████████████
      ██████████░██████░██████░█████████
      █████████░░░█████░█████░░░█████████
     █████████░░░░░████░████░░░░░████████
     ████████░░░░░░░███░███░░░░░░░████████
     ██████████████████░██████████████████
     █████████████████░░░█████████████████
     ████████░░░████████████████░░████████
      ███████░░░░░░░░░░░░░░░░░░░░░███████
       ████████░░░░░░░░░░░░░░░░░████████
        ██████████████████████████████
         ███████████████████████████

"| lolcat
echo -e " $cyan
____ ___ ____ ____ __ _ ____ ____ ____ ____ ___  ____
 ====  |  |=== |__, | \| [__] ==== |___ [__] |--' |===
"
echo -e "$pink             A data hiding tool "
echo -e "          Coded  by Rahim(devil504) $ylw"
echo -e ""
echo -e "$cyan 1 ] $ylw  Hide a data"
echo ""
echo -e "$cyan 2 ] $ylw  Unhide a data"
echo -e "$lg"
read -p 'Select one option : ' input
echo ""
if [ $input == 1 ]
then
echo -e "$ylw"
read -p 'Enter the image path: ' img
echo ""
read -p 'Enter image name with ext: ' imgname
echo ""
read -p 'Enter the data path: ' data
echo ""
read -p 'Enter the data with ext: ' dataname
echo -e  "$red Fetching information "
sleep 3s
echo -e "$lg Hiding Data"
sleep 2s
mv $img /$HOME/stegnoScope/output
mv $data /$HOME/stegnoScope/output
cd output
cat $imgname $dataname >hide.jpg
echo -e "$blue Check out output folder hide.jpg is the generated data"
exit
elif [ $input == 2 ]
then
echo -e "$green You choosed to extract data from image $ylw"
echo ""
read -p 'Enter the image path : ' datapath
echo ""
read -p 'Enter the image name with ext : ' imgsname
echo ""
echo -e "Extracting Data ..."
mv $datapath /$HOME/stegnoScope/output
unzip imgsname
echo -e "If the data inside the image was not a zip file then it can't extract it $reset"
else
echo -e "$red Something went wrong just restart the tool"
exit
fi
exit
