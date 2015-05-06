#!/bin/bash

# = 赋值
a=100

#比较
if [ 100 = 100 ]
then
  echo "100==100"
fi

# + - * / %

# ** exponentiation
let "z=5**3"
echo "5 exp 3 = $z"


# += -= *= /= %= 复合操作符

# Bash不识别浮点数
#a=1.5
#let "b = $a + 1.3" 
#echo "b = $b"

# bitwise operators
# << <<= >> >>= & &= | |= ~ ^ ^=

# logical operators
# ! &&  ||  
