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

could configure `buckets` as an array

- Summary

a summary samples observations (usually things like request durations and response sizes). While it also provides a total count of observations and a sum of all observed values, it calculates configurable quantiles over a sliding time window.

could configure `percentiles` as an array;
to enable sliding window, set `maxAgeSeconds` and `ageBuckets`

## client

### register

- metrics default register(store) to `global default registry`
- use could create another registry, sample code as follows:

```js
const client = require("prom-client");
const collectDefaultMetrics = client.collectDefaultMetrics;
const Registry = client.Registry;
const register = new Registry();
collectDefaultMetrics({ register });
```
