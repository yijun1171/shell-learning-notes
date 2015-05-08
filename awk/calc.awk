#! /usr/bin/awk -f

#可以声明变量

$3 > 15 {emp = emp + 1}

#还可以处理字符串
$2 > maxrate {maxrate = $2 ; maxemp = $1}

#字符串拼接
{names = names $1 " "}

#内置函数
#length

{print $1, length($1)}

END {print emp, "employees worked more than 15 hours";
  print "highest hourly rate:", maxrate, "for" , maxemp;
  print names
}
