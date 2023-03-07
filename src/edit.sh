#!/bin/bash
#########################
echo "Введите какую строку хотите заменить"
read strin
echo "Введите на что хотите заменить"
read strout
echo "Введите путь до файла где хотите заменить"
read file

sed -i "" "s/$strin/$strout/" $file

################################
info=$(ls -lh $file)
#echo $info
size=$(echo $info | cut -d ' ' -f5)
#echo $size
year=$(date "+%Y")
month=$(echo $info | cut -d ' ' -f6)
#echo $month
day=$(echo $info | cut -d ' ' -f7)
#echo $day
time=$(echo $info | cut -d ' ' -f8)
hash=$(shasum -a 256 $file)
hash=$(echo $hash | cut -d ' ' -f1)
alg="sha256"

totalstr="$file - $size - $year-$month-$day $time - $hash - $alg"
echo $totalstr
echo $totalstr >> files.log

######################## 


