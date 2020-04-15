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
source=www.*(hello OR world).com

```

# Pipe

```splunk
* | rex | dedup name
query | eval animalName = spath(_raw, "animal.name")
query | eval varType = case(isstr(oneProp), "str", a==2, "num", match(foodName, "bird"), "bird", 1==1, "other")
```

# Chart

```splunk
query | timechart count by dim0
query | stats count by dim0
query | chart count by dim0 dim1 | sort 5 -dim0 | fields - dim3 | fields dim1, dim0, *
```

# Slack integration

- app name: slack notification alert
- in slack, add webhook
- copy webhook url
- edit alert, manage actions, setup slack alerts
- page webhook url
-
