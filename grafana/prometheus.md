# Prometheus

[ref](https://sysdig.com/blog/prometheus-metrics/)

## format

- dot-metrics

```txt
production.server5.pod50.html.request.total
```

- tagged metrics

```txt
http_requests_total{service="service", server="pod50", env="production"} 210
```

## fields in metrics

- Metric name
- Any number of labels (can be 0), represented as a key-value array
- Current metric value
- (Optional) metric timestamp

## metric types

- Counter

  accumulative values

- Gauge

  instantaneous measurements of a value

- Histogram

A histogram samples observations (usually things like request durations or response sizes) and counts them in configurable buckets. It also provides a sum of all observed values.

- Summary

a summary samples observations (usually things like request durations and response sizes). While it also provides a total count of observations and a sum of all observed values, it calculates configurable quantiles over a sliding time window.
