
#
#
#以下是控制流

#if else
#
#
#if condition
#then
# command1
# command2
# ...
#
#fi

localNumber=2
#[ 是一个可执行命令
if [ $localNumber -eq 2 ]
then 
  echo "localNumber is 2"
fi

if [ $localNumber -gt 44 ]
then
  echo "localNumber greater than 44"
elif [ $localNumber -eq 2 ]
then
  echo "localNumber is 2"
else
  echo ""
fi

#loop

#for 
for var in "yj" "sdf"
do
  echo $var
done

#while

count=5
while [ $count -gt 0 ]
do
  let "count-=1"
  echo "count is $count"
done

#测试退出状态
[ 2 -lt 4 ]
echo "2<4 :"$?

[ 2 -gt 4 ]
echo "2>4 :"$?

date=0
while [ $date -lt 7 ]
do
  case $date in
    0) 
      echo "Sunday"  ;;
    1) 
      echo "Monday"  ;;
    2) 
      echo "Tuesday"  ;;
    3) 
      echo "Wednesday"  ;;
    4) 
      echo "Thursday"  ;;
    5) 
      echo "Friday"  ;;
    6) 
      echo "Sataurday"  ;;
  esac
  let "date+=1"
done
