#!/bin/bash

# multi lines comments
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
#赋值可以用 =
#也可以用 let
let a=16+5
#可以从read赋值
echo -n "Enter \"a\" "
read a
echo "The value of \"a\" is now $a"
#重定义变量
echo "localNumber redefined to be ${localNumber}"
echo $a

a=`echo hello`
echo "The result of \`echo hello\` is $a"

a=`ls -l`
echo "The result of \`echo ls\` is $a"

a=2334
#shell中的变量是没有类型的
b=${a/23/BB} #用BB替换23
echo $b

# $0 是脚本本身 $1 $2 .. 是调用参数
echo "the name of this script is \"`basename $0`\""

if [ -n $1 ]
then
  echo "Parameter #1 is $1"
fi

echo "All the parameters are $*"

#number of args passed
args=$#
lastArg=${!args}
echo "$args parameters passed, the last one is $lastArg"


# 数字常量
# 默认是10进制
let "dec = 32"
echo "decimal number = $dec"

# 八进制以0开头
let "oct = 032"
echo "octal number = $oct"

# 十六进制以0x开头
let "hex = 0x32"
echo "hexadecimal number = $hex"


# (()) 双括号可以用来进行算术运算和求值
echo "----------"

(( a = 23 )) # assignment
echo "a (initial value) = $a"

(( ++a ))
echo "++a = $a"

(( t = a<45?7:11)) #三目操作符
echo "t=a<45?7:11 ; t = $t"

