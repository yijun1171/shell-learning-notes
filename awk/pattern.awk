#!/usr/bin/awk -f

#特殊模式,begin匹配第一个文件的第一行之前的位置
BEGIN {print "Name Rate HOURS"; print""}

# 比较
$2 * $3>= 5 {print NR , $1, $2}

# $1 == "Beth"

# 模式组合
# $2 >= 4 || $3 >= 20

#END匹配最后一个文件的最后一行的位置
END{print "end"}


