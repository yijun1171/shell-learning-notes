#!/bin/bash

#以下是函数的基本用法
# function func_nam {}
# or func_name(){}

# compact into single line 
fun () { echo "this is a single lined function"; echo; } # a semicolon must follow the final command

fun # invoke. a function call is equivalent to a command

# nested function is allowed
f1 () 
{
  f2 () 
  {
    echo "function \"f2\" ,inside \"f1\""
  }  
  f2
}

f1

echo "-----------------"

DEFAULT=default

func2 () {
  if [ -z "$1"]
  then
    echo "Parameter #1 is zero length"
  else
    echo "Parameter #1 is \"$1\""
  fi

  variable=${1-DEFAULT}
  echo "variable  = $variable"
}

func2
func2 ""

echo "-------------------"

#function cannot see the parameters passed by command-line

func(){
  echo "\"$1\""
}

echo "first call without parameters to see if the function can see the one from command-line"
func

echo "--------------------"
echo "second call with para:"
func $1


echo "--------------------"
#function can dereference parameters

dereference ()
{
  y=\$"$1"  
  echo $y

  x=`eval "expr \"$y\" "`
  echo $1=$x
  eval "$1=\"something new\" "
}

param="pppp"
dereference param
echo $param


echo "---------------------"

#显式指定退出状态
#return 0
#不指定的话,状态设置为最后一条指令的退出状态


[ 1 -gt 100 ] ## exit status should be 1
exit 0 #显式指定
