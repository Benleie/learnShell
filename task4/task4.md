# 第四次上机作业

> 李奔 &nbsp;&nbsp;&nbsp; 2015301610026

1. 显示/usr/bin目录下以大写或小写s开头的行,仅需显示前10条记录
```bash
grep -I '^[sS]' /usr/bin/* | head -n 10
# 或者
grep -Ii '^s' /usr/bin/* | head -n 10
```	

2. `grep -v '/sbin/nologin' /etc/passwd`
3. `grep "\<[0-9]\{1,2\}\>" /etc/passwd`
4. 显示/etc/rc.d/rc.sysinit文件中，以#开头，后面跟至少一个空白字符，而后又
有至少一个非空白字符的行；
![](./rc.jpg)
5.
```bash
#! /bin/bash
FILE="string.txt"

cat  > $FILE  <<EOF
he beat his his competitor, it is a feat
he beat a lot of competitors, but another man beat him.
the sun gives me heat, we also must face to the danger
of death from the sun
EOF

EAT="eat\>"
grep --color $EAT $FILE
echo "###################"
grep --color "${EAT}.*${EAT}" $FILE

```
![](./test5.jpg)
6. (1)
```bash
#! /bin/bash
rm -rf test           # 强制递归删除test目录
mkdir test            # 创建test目录
cd ./test             # 进入目录
touch file1 file2     # 创建file1与file2两个文件
mkdir folder          # 创建文件夹folder
cp file1 ./folder     # 复制file1到folder
cp file2 ./folder     # 复制file2到folder
ls -lath			  # 查看test文件夹详细信息
```
![](./test6.jpg)

(2) ln默认创建硬链接，ls -s创建软连接，使得文件连接数增加
![](./test62.jpg)

7.  假设一个名为 myfile 文件的属主、属组和其他用户的权限为 rwxr-xrw- ，请问其数字权限是**756**： 去掉该文件的属主可写权限的命令是:**chmod u-w myfile**，增加该文件的属组的可写权限命令是：**chmod g+w myfile** ，增加该文件的其他用户的可执行权限的命令是：**chmod o+x myfile** , 让属主、属组和其他用户都具有可执行的权限的命令是**chmod +x myfile** ( 或者 **chmod ugo+w myfile**) ，让该文件的属主、属组和其他用户的权限都变为可读、可写和可执行的命令是 **chmod 777 myfile**.

8. 脚本编程
```bash
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

```
![](./test8.jpg)
9. 
```bash
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
```