# Lifecycle
### Initial:
- zipped source code(s3)
- launch container in cluster
- event come and handled
- freeze container  
### 2nd request:
- thaw container
- idle too long, discard
- memory allocated to container does not disappear each time, but will be discarded with container of course
### Concurrent requests:
- trigger AWS to launch additional containers(come and go as necessary)
