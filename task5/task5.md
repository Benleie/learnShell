# 第五次上机作业

## 改错
	
1. 三个错误
```bash
#!/bin/bash
#将指定文件备份到~/backup。若该目录下已经备份有同名文件，则将同名文件改名（加后缀old）
if [ $# -ne 1 ];then
	echo "usage: backup.bash <filename>"
	exit 1
fi
#检查文件与备份目录的存在性，并执行对应操作
filename="$1"
if [ ! -f "$filename"];then
	echo "$filename" does not exit
	exit 2
fi
if [ -d ~/backup ]
	then
		mkdir -p ~/backup
	else
		backfile=”~/backup/$filename"
	if [ -f "$backfile" ];then
		mv "$backfile" "$backfile"".old"
	fi
		cp "$filename" "$backfile"
fi
```

2. 两个错误
```bash
#!/bin/bash
#删除以j或者x开头的文件
for file in [j-x]*
do
	#rm -f $file
	echo "Removed file\"$file\"".
```

3. 四个错误
```bash
#!/bin/bash
str1= “Wuhan University"
str2=Wuhan
if [ "$str1" > "$str2" ] then
	echo "$str1"
else
	echo "$str2"
```

## 脚本编程

1. 编写一个 shell 脚本实现加减乘除运算计算器。从终端输入两个数及运算符号（例如 1 + 2） 
2. 编写一个 shell 脚本实现将学生百分制成绩转换为对应的等级。分数在90-100 为 A+、80-89 为 A、70-79 为 B、60-69 为 C、0-60 为 D。
3. 写一个脚本计算圆周率。要求精确到小数点后3位，输出结果的同时也输出对应的n。 
4. 编写一个 shell 脚本，实现分段函数求值
