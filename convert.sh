#!/bin/sh

cd src
for i in *.md
do
    pandoc "$i" -o "../www/${i%.*}.html" --standalone --template "../../../../..$PWD/../template.html"
done
