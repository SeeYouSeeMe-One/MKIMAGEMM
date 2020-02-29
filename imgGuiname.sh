#!/bin/bash



echo '📁要修改的文件夹地址'
changeDoc=/Users/xushiyou/Desktop/meinvD

echo '📁要保存到的目录'
saveDoc=/Users/xushiyou/Desktop/saveImg

#echo '📁拖入要修改的文件夹地址'
#read changeDoc
#
#echo '📁拖入要保存到的目录'
#read saveDoc



#每个文件夹内的图片内容、个数
baseImgNames=("000" "001" "002" "003" "004" "005")

#  从这个文件夹名称开始
documentNameNow=20200000007
#单个文件夹内记录保存
timeDocNum=0


#创建第一个文件夹
#创建 子目录
creat0=$saveDoc/$documentNameNow
if [ ! -d "$creat0" ]
then
mkdir $creat0
echo "创建文件夹-- 📁${creat0}成功"
else
echo "📁${creat0}---已经存在"
fi

#遍历当前文件夹下的图片
for imageFile in $changeDoc/*

do

echo $imageFile"当前执行的文件----"

#图片新名称
imgFileName=${baseImgNames[$timeDocNum]}

#打印文件夹-文件名字
echo $documentNameNow"---"$imgFileName

#重命名---原图
orginImg=$saveDoc/$documentNameNow/$imgFileName

cp $imageFile $orginImg"hd".jpg

cp $imageFile $orginImg.jpg
#略缩图 280*350
convert -sample 25%x25% $orginImg.jpg $orginImg.jpg

echo $imageFile"---"$saveDoc/$documentNameNow/$imgFileName.jpg


#判断是不是保存够数 == 006
bijioa=${baseImgNames[$timeDocNum]}
echo $bijioa"判断是不是保存够数"
sheding=005
if [ $bijioa == $sheding  ]
then

#文件夹记录重置
timeDocNum=0

echo "相等啊----♻️---"
#是了 创建新文件夹名称,documentNameNew++
documentNameNow=$(($documentNameNow+1))
#创建新文件夹

creat1=$saveDoc/$documentNameNow
if [ ! -d "$creat1" ]
then
mkdir $creat1
echo "创建文件夹-♻️- 📁${creat1}成功"
else
echo "📁${creat1}--♻️-已经失败--存在"
fi



else
timeDocNum=$timeDocNum+1
fi

done


