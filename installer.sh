#!/bin/sh

make

# Downloading train and test data"
wget https://pjreddie.com/media/files/VOCtrainval_11-May-2012.tar
wget https://pjreddie.com/media/files/VOCtrainval_06-Nov-2007.tar
wget https://pjreddie.com/media/files/VOCtest_06-Nov-2007.tar

# Extracting train and test data
tar xf VOCtrainval_11-May-2012.tar
tar xf VOCtrainval_06-Nov-2007.tar
tar xf VOCtest_06-Nov-2007.tar

# Downloading a pretrained weights from pjreddie.com
wget https://pjreddie.com/media/files/darknet53.conv.74

# Generating labels for VOC
/usr/bin/python voc_label.py
VOC_DATA_DIR=$(pwd)/data/voc
mkdir $VOC_DATA_DIR; cat 2007_* 2012_train.txt > $VOC_DATA_DIR/train.txt

sed -ie "s:/home/pjreddie:$(pwd):g" cfg/voc.data

