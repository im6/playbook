# Redis Question and Solution

[ref](https://developpaper.com/cache-penetration-cache-breakdown-cache-avalanche-solution-analysis/)

## Cache avalanche

Cache failed in the same time, result in all the request hitting database. SQL server usage increase, hot CPU.
Or cache expired at the same time.

### Solution of Cache avalanche

- set different expiration time
- cache serviec backup
- try to use high-availabiliity caches
- using queue to make sure writing cache in single thread

## Cache Penetration

Cache penetration refers to querying a nonexistent data.

### Solution of Cache Penetration

- if db query response is empty, set `null` to cache, even with smaller timeout value.

## Cache breakdown

Some hot key expire that will result in huge amount of db hit, a lot of concurrent requests in this moment will hurt db.

### Solution of Cache breakdown

some hot key, set expiration time to be longger.
