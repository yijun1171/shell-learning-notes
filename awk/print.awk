#!/usr/bin/awk -f

#$0 表示整行内容

#NF中保存有多少个字段,$NF是最后一个字段
{print NF, $1, $NF}

#NR中保存当前已经读取了多少行
{print NR, $0}

#增加输出内容
{print "total pay for", $1, "is", $2}

#格式化输出,格式化规则类似printf
{print ("total pay for %s is $%.2f \n", $1, $2 * $3) }


