# 第二次上机作业

> 李奔 2015301610026   

1. `grep '^..j.c$' words`
2. `grep 'cat' words | awk 'NR <= 5 {print NR,$0}'`
		显示后五行待补充
3. `grep -r "[[:alnum:]].*"  | head -n 3`  
4. `grep "^a*b"`表示匹配以a开头的，且含有b的字符
5. `cat /etc/passwd | grep "[0-9]\{3} | head -n 10"`
6. `grep "\<const>\" filename`
7. `grep -e "\<fl" -e "er\>" filename `
8. -E表示使用扩展正则表达式；  ?表示可有可无      
	 没有差异  因为?不需要转义
9.  
	 + 执行结果为： god good; `\`表示转义，将其前面的字符匹配多次
	 + ` echo ‐e  "god\ngood\ngd\n" | grep  'go\{1,\}d'` 结果为`god good`
	 + 没有不同
10.  正则表达式的元字符集: `^string string$ . \  * [list] [^list] \{n,m\}  \b,\< 	\b,\>`等  
		 扩展正则表达式的元字符集: `+,?,(),()+, |` 等
11.
12. grep -e "Wuhan" -e "wuhan" filename
13. `echo  -­‐e  "abc\nbc\nabdc\ncbda\n"  |  grep  '^a.*' ` 查找以a开头的     
		`echo -­e  "abc\nbc\nabdc\ncbda\nuvw" | grep '[^ab]' --color=auto` 查找除a、b以外的其他字母，用颜色标出      
		`echo -­e  "abc\nbc\nabdc\ncbda\nuvw" | grep  '[ab]' -­‐color=auto`  匹配a或b      
		`echo -­e  "abc\nbc\nabdc\ncbda\nuvw" | grep '[a|b]' --color=auto` 查找a或b，用颜色标出    
		`echo -­e  "abc\nbc\nabdc\ncbda\nuvw" | grep '[^a|b]' --color=auto ` 同2    
		`echo -­e  "abc\nbc\nabdc\ncbda\nuvw" | grep '[^a|b|c|d]' --color=auto` 匹配a,b,c,d之外的字符   
		`echo -­e  "abc\nbc\nabdc\ncbda\nuvw" | grep '[^abcd]' --color=auto` 同上    
14.
15.
16. 结构：`awk 'BEGIN{ commands } pattern{ commands } END{ commands }'`
17. 偶数行`awk 'NR%2 {print NR,$0}'`
		奇数行`awk '!(NR%2) {print NR,$0}'`


