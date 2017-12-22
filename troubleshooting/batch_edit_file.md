```bash
while read p; do
	echo $p
done < c.txt
echo =========
num=0
cat c.txt | while read line
do
	num=$(( $num + 1 ))
	echo "downloading "$num $line "..."
	curl "http://dkny.oss-cn-hangzhou.aliyuncs.com/1/assets/"$line -O
	gzip $line
	mv $line".gz" "compress/"$line
done
echo "Finish all the jobs!"
```
