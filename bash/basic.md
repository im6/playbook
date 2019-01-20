
# Arithmetic

```sh
expr 1 + 3 # space sensitive
expr 10 / 3 # 3
expr 10 \* 3 # mutiply
```

# variable declaration

```sh
myvar=23
echo ${myvar}

myvar=abc
echo ${#myvar}

myvar=abcd
echo ${myvar:1:3} # bcd
```

# Condition

```sh
myvar=abcdef
myvar2=ghi
if [[ $myvar = $myvar2 ]]
  then
  echo yes
else
  echo no
fi
```

```sh
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

```sh
if [[ $(lsb_release -rs) == "14.04" ]]; then
    echo 'do something'
fi

if [ ! -d /MyAppFolder/ ]; then   
    sudo mkdir /MyAppFolder
fi
```

# End Clause

```sh
exit 1  #return error code
```
