```
# ls –al > list.txt 注：将显示结果输出到 list.txt 文件中，若该文件已存在则予以取代

# ls –al >> list.txt 注：将显示结果累加到 list.txt 文件中，该文件为累加的，旧数据保留！

# ls –al 1> list.txt 2> list.err 注：将显示数据正确输出到 list.txt ，错误的数据输出到 list.err

# ls –al 1> list.txt 2> &1 注：将显示数据不论正确或错误均输出到 list.txt 中，注意，错误与正确信息输出到同一个文件中，则必须这样写，不能写成其他格式！

# ls –al 1> list.txt 2> /dev/null 注：将显示的数据，正确的输出到 list.txt ，错误的数据予以丢弃！

# ls -al &> someFile.txt 

# ls -al &>> someFile.txt 
```
