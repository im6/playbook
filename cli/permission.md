# change folder/file permission

```sh
chmod [options] mode[,mode] file1 [file2 ...]
```

## mode: (0:FileType)(1-3:Owner)(4-6:Group)(7-9:Others)


### FileType:
```
-: Ordinary file
d: Directory
b: Block special file
l: Symbolic link
c: Character special file
h: hidden directory
m: File migrated
```


### rwx:
```
r: Read
w: Write
x: Execute
-: Denied Permission
```


#### owener:
```
r: 400
w: 200
x: 100
```

#### group:
```
r: 40
w: 20
x: 10
```

#### others: 
```
r: 4
w: 2
x: 1
```

### file permission

| #   | Permission              | rwx |
| --- | ----------------------- | --- |
| 7   | read, write and execute | rwx |
| 6   | read and write          | rw- |
| 5   | read and execute        | r-x |
| 4   | read only               | r-- |
| 3   | write and execute       | -wx |
| 2   | write only              | -w- |
| 1   | execute only            | --x |
| 0   | none                    | --- |

```sh
chmod [options] mode[,mode] file1 [file2 ...]
chmod +x shell.sh # macbook give shell exec access
namei -l <PATHNAME>  // display the permission config of each files/paths
```