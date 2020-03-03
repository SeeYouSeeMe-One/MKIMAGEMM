#!/bin/bash

echo "陌开播放器 🎬 <<--->>DownList下载 ⏬ 工具"

verifiFunc(){

echo " ✍️ 输入 666 继续执行"
read markCode

if [ $markCode != 666 ]
then
echo " ⚠️ 非正常操作 ⚠️ "
verifiFunc
fi

}
verifiFunc

echo " 🚩开始执行操作 🚩 "

echo " 🚩 拖入 DownLists所在的文件夹 📁 "
read changeDoc

echo " 🚩 拖入 下载文件要保存目录文件夹 📁 "
read saveDoc


imgNameid=0

#循环读取downlist文件📃
for urlString in $changeDoc/*
do
echo " ⬇️ 执行：：：：${urlString}"
#循环文件内的每行数据URL
while read line
do
echo " ⬇️ ⬇️ ⬇️ ⬇️ ：：${line}"

imgNameid=$[$imgNameid+1]

#下载url文件

#wget 下载
#wget $line
#下载url生成目标文件file1，日志输出到log1文件中
#wget $line -O $saveDoc -o $saveDoc
#如果网络不稳定，可以尝试5次下载次数
#wget -t 5 $line
#有时为了限制网速以20kb/s速度下载url
#wget –limit-rate 20k url

#curl下载
curl -s -o $saveDoc/$imgNameid.jpg $line

done <  $urlString


done
