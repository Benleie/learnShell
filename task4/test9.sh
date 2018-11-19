#! /bin/bash

Sum=0
read -p "请输入正整数：" Number
Num=Number
while [[ Num -gt 0  ]]
do
	((Sum += Num))
	((Num --))
	# echo "$Num"
done
echo "$Number之内的所有数之和为:$Sum"
# loop=0
# while [[ $loop -ne 10 ]]
# do
# 	# let loop = $loop + 1
# 	((loop = $loop + 1))
# 	echo "current value of loop is:$loop"
# done