# Splunk Basic

[src](https://www.linkedin.com/learning/learning-splunk/understanding-results-fields?u=26192810)

## install

```sh
sudo su -
# download from splunk website cli
dpkg -i splunk.deb
cd /opt/splunk/bin
./splunk start # launch splunk

./splunk enable boot-start # enable auto start
```

# Search

```splunk
(boot OR startup) AND (finish OR complete)


```
