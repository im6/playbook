# Interaction

```sh
echo -n "Prompt: "
read
echo "You typed $REPLY."
echo -n "Prompt: "
read response
echo "You typed $response."
```

```sh
PS3="Choose a fruit: "
select fruit in "apples" "oranges" "pears"
do
  if [ -n "$fruit" ]
  then
    break 
  fi
  echo "Invalid choice"
done
```

```sh
$ dialog --menu "Choose" 10 20 4 1 apples 2 \
oranges 3 pears 4 bananas 2>/tmp/ans
$ fruit=`cat /tmp/ans`
$ echo $fruit
$ zenity --list --radiolist --column "Choose" \
--column "Fruit" 0 Apples 0 Oranges 0 Pears 0 \
Bananas > /tmp/ans
$ fruit=`cat 
```

## Keyword

```sh
read $REPLY
```

