#!/bin/bash

# comments

# comments can be embedded within a pipe
initial=( `ls -l |
#comments here
grep "con" `)
echo $initial

# ; 分号 命令分隔符
echo hello ; echo world

# ;; case选项的终结符
variable="abc"
case "$variable" in
  abc) echo "$variable = abc" ;;
  xyz) echo "$variable = xyz" ;;  
esac

# . 和source命令等价,将文件导入到此处 作用和c语言中的#include类似
# . 还是隐藏文件的前缀 .hidden_file
# . 还表示当前目录

# $? 用来保存上一次命令的退出状态
[ 1 -lt 0 ]
echo "1 < 0 : $?"

# : 冒号表示空命令 同时也表示true
# while : 是死循环
# 和重定向结合
: > empty # 等价于 cat /dev/null > empty
# 在$PATH中作为分隔符
echo $PATH


# ! 叹号取反
! [ 1 -lt 0 ]
echo "!(1 < 0) : $?"



# $ 变量替换
# 行末
# 保存退出状态


# () 命令组,在子shell中执行
a=java
(a=hello;echo $a)
echo $a
# 初始化数组
Array=(this,is,array)
for var in Array
do
  echo $var
done

# {xxx,yyy,zzz} 批量表示法
echo \"{these,words,are,quoted}\"
# cat {file1,file2,file3} > combined_file

echo {a..z}
echo {1..9}


#[] test
(( 1 && 1 ))
echo $?

Array[1]=hehe
echo "Array[1] is " ${Array[1]}

# & run job backgroud

