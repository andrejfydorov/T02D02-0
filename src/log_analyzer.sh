#!/bin/bash

echo "Введите путь до файла"
read path

line_count=$(wc -l < $path)
#echo $line_count




cat files.log | cut -d ' ' -f1 | rev | cut -d '/' -f1 | rev > temp.txt



uniq_count=$(sort temp.txt | uniq | wc -l)

echo $uniq_count




