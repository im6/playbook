
## Arithmetic
```
expr 1 + 3 # space sensitive
expr 10 / 3 # 3
expr 10 \* 3 # mutiply
```

## variable declaration
```
myvar=23
echo ${myvar}

myvar=abc
echo ${#myvar}

myvar=abcd
echo ${myvar:1:3} # bcd
```
## Condition
```
myvar=abcdef
myvar2=ghi
if [[ $myvar = $myvar2 ]]
  then
  echo yes
else
  echo no
fi
```

```
myvar=10
myvar2=20
if [[ $myvar -gt $myvar2 ]]
  then
  echo bt
elif [[ $myvar -lt $myvar2 ]]
  then
  echo notbt
else
  echo nothing
fi
```
