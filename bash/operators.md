# Comparison Operators

## integer comparison

### -eq

is equal to

if [ "$a" -eq "$b" ]

### -ne

is not equal to

if [ "$a" -ne "$b" ]

### -gt

is greater than

if [ "$a" -gt "$b" ]

### -ge

is greater than or equal to

if [ "$a" -ge "$b" ]

### -lt

is less than

if [ "$a" -lt "$b" ]

### -le

is less than or equal to

if [ "$a" -le "$b" ]

### <

is less than (within double parentheses)

(("$a" < "$b"))

### <=

is less than or equal to (within double parentheses)

(("$a" <= "$b"))

### >

is greater than (within double parentheses)

(("$a" > "$b"))

### >=

is greater than or equal to (within double parentheses)

(("$a" >= "$b"))

## string comparison

### =

is equal to

if [ "$a" = "$b" ]

Caution	
Note the whitespace framing the =.

if [ "$a"="$b" ] is not equivalent to the above.

### ==

is equal to

if [ "$a" == "$b" ]

This is a synonym for =.

Note
The == comparison operator behaves differently within a double-brackets test than within single brackets.
[[ $a == z* ]]   # True if $a starts with an "z" (pattern matching).
[[ $a == "z*" ]] # True if $a is equal to z* (literal matching).

[ $a == z* ]     # File globbing and word splitting take place.
[ "$a" == "z*" ] # True if $a is equal to z* (literal matching).

### !=

is not equal to

if [ "$a" != "$b" ]

This operator uses pattern matching within a [[ ... ]] construct.

### <

is less than, in ASCII alphabetical order

if [[ "$a" < "$b" ]]

if [ "$a" \< "$b" ]

Note that the "<" needs to be escaped within a [ ] construct.

### >

is greater than, in ASCII alphabetical order

if [[ "$a" > "$b" ]]

if [ "$a" \> "$b" ]

Note that the ">" needs to be escaped within a [ ] construct.

See Example 27-11 for an application of this comparison operator.

### -z

string is null, that is, has zero length

 String=''   # Zero-length ("null") string variable.

if [ -z "$String" ]
then
  echo "\$String is null."
else
  echo "\$String is NOT null."
fi     # $String is null.

### -n

string is not null.

Caution	
The -n test requires that the string be quoted within the test brackets. Using an unquoted string with ! -z, or even just the unquoted string alone within test brackets (see Example 7-6) normally works, however, this is an unsafe practice. Always quote a tested string. [1]

## compound comparison

### -a

logical and

exp1 -a exp2 returns true if both exp1 and exp2 are true.

### -o

logical or

exp1 -o exp2 returns true if either exp1 or exp2 is true.

These are similar to the Bash comparison operators && and ||, used within double brackets.
[[ condition1 && condition2 ]]
The -o and -a operators work with the test command or occur within single test brackets.
if [ "$expr1" -a "$expr2" ]
then
  echo "Both expr1 and expr2 are true."
else
  echo "Either expr1 or expr2 is false."
fi
Caution	
But, as rihad points out:
```
[ 1 -eq 1 ] && [ -n "`echo true 1>&2`" ]   # true
[ 1 -eq 2 ] && [ -n "`echo true 1>&2`" ]   # (no output)
# ^^^^^^^ False condition. So far, everything as expected.

# However ...
[ 1 -eq 2 -a -n "`echo true 1>&2`" ]       # true
# ^^^^^^^ False condition. So, why "true" output?

# Is it because both condition clauses within brackets evaluate?
[[ 1 -eq 2 && -n "`echo true 1>&2`" ]]     # (no output)
# No, that's not it.

# Apparently && and || "short-circuit" while -a and -o do not.
Refer to Example 8-3, Example 27-17, and Example A-29 to see compound comparison operators in action.

```
