#!/bin/bash

# -----------
# Arguments check
ARGS=2
E_BADARGS=85

if [ $# -ne "$ARGS" ]
then
  echo "Usage: `basename $0` first-number second-number"
  exit $E_BAGARGS
fi

# ----------

gcd()
{
  dividend=$1
  divisor=$2

  reminder=1

  until [ "$reminder" -eq 0 ]
  do
    let "reminder = $dividend % divisor"
    dividend=$divisor
    divisor=$reminder
  done 
}

gcd $1 $2

echo "GCD of $1 and $2 = $dividend".
exit 0
