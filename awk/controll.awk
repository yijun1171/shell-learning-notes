#! /usr/bin/awk -f

#控制语句

#if-else

$2 > 6 {n=n+1 ; pay = pay + $2 * $3}
END    {  if(n > 0)
            print n, "employees, total pay is", pay,
            "average pay is", pay/n
          else
            print "no employees are paid more than $6/h"
}

#while for 用法和c语言没有区别


