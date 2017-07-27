# Basic
```bash
?(pattern-list)   # Matches zero or one occurrence of the given patterns
*(pattern-list)   # Matches zero or more occurrences of the given patterns
+(pattern-list)   # Matches one or more occurrences of the given patterns
@(pattern-list)   # Matches one of the given patterns
!(pattern-list)   # Matches anything except one of the given patterns

ls *.jpg         # List all JPEG files
ls ?.jpg         # List JPEG files with 1 char names (eg a.jpg, 1.jpg)
rm [A-Z]*.jpg    # Remove JPEG files that start with a capital letter
```
# Examples
```bash
ls filename?(.*)
ls +(ab|def)*+(.jpg|.gif)
ls ab*.jpg ab*.gif def*.jpg def*.gif
ls ab+(2|3).jpg
ls !(*.jpg|*.gif)
ls !(+(ab|def)*+(.jpg|.gif))
```
