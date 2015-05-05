#!/bin/bash

# multi lines comments
#
#
#
#以下是字符串 

#字符串用双引号,可以引用变量,可以用转义符
VARNAME="this is string"

#或者单引号,不能引用变量
string='this is also string'

skill="java"

#引用变量可以加{}
echo "I am good at ${skill}script"

#拼接字符串
echo ${skill}$string

#获取字符串长度
len=${#skill}

echo "the length of variant 'java' is ${len}"

#提取子串
SubString=${string:1:4}

echo "subString of 'this is also string' [1,4] is ${SubString}"

#查找子串
echo `expr index "$string" is`



#也可以不加
echo $VARNAME

echo $localNumber
localNumber=2

#重定义变量
echo "localNumber redefined to be ${localNumber}"

