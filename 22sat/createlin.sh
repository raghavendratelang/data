#!/bin/bash

echo "Enter filename to create link"
read file
if [ ! -f $file ];then
        echo "Softlink can not be created because $file does not exist"
        exit 1
fi

echo "Enter link name"
read link
if [ -L $link ];then
        echo "Softlink can not be created because $link already exists"
       exit 1
fi

ln -s $file $link
if [ $? -eq 0 ];then
        echo "Softlink $link created for the file $file successfully"
else
        echo "Link $link not created"
fi
