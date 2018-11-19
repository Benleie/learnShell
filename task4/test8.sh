#! /bin/bash
Bool=1
Sum=0
until [ $Bool -eq 0 ]
do
	read -p "请输入底边长：" a
	read -p "请输入高：" h
	S=`echo "scale=6;$a*$h/2" | bc`
	Sum=`echo "scale=6;$S+$Sum" | bc`
	echo "三角形面积为: $S"		
	echo "面积求和为： $Sum"		
	read -p "输入0退出，其他继续" Bool
done
