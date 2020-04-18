# Splunk Basic

[stats, chart and timechart](https://www.splunk.com/en_us/blog/tips-and-tricks/search-commands-stats-chart-and-timechart.html)

## Search

```splunk
(boot OR startup) AND (finish OR complete)
source=www.*(hello OR world).com
```

## Pipe

```splunk
query | rex | dedup name
query | eval animalName = spath(_raw, "animal.name")
query | eval varType = case(isstr(oneProp), "str", a==2, "num", match(foodName, "bird"), "bird", 1==1, "other")
query | strcat dim0 " - " dim1 d0d1 | count by d0d1 limit=0
```

## Chart

```splunk
query | timechart count by dim0
query | stats count by dim0
query | chart count by dim0 dim1 | sort 5 -dim0 | fields - dim3 | fields dim1, dim0, *
```
