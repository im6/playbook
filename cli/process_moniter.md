

### PS for processing check
```
ps
ps -u username
ps -e # check all the running application
ps aux # same as above but showing CPU and memory usage
```


### Service check

```
sudo service --status-all
sudo service --status-all | more
sudo service --status-all | grep ntpd
sudo service --status-all | less
sudo service xxx status

```
