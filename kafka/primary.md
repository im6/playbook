# kafka primary

[tutorial](https://www.upsolver.com/blog/apache-kafka-use-cases-when-to-use-not)
[partition number](https://www.instaclustr.com/the-power-of-kafka-partitions-how-to-get-the-most-out-of-your-kafka-cluster/)

## Cores

- event
- producer
- consumer
- cluster: kafka system, could have multiple elements(node)
- broker: software that runs on kafka node
- replicas: There are several copies of the same data in the Kafka cluster.
- partitions: serve to replicate date across brokers

## Rules

- Topics are immutable
- Each topic can serve data to many consumers

## partition and consumer

- a consumer group supports as many consumers as partitions for a topic.
- The consumers are shared evenly across the partitions, allowing for the consumer load to be linearly scaled by increasing both consumers and partitions
- if partitions > consumer: consumers get messages from multiple partitions
- if partitions < consumer: some of the consumers will be “starved” and not receive any messages until the number of consumers drops to (or below) the number of partitions.

## offset

- ordering of the messages in the topics is referred to as the offset
- offset is stored by Kafka and/or ZooKeeper, so that after shuts down or fails it will retain data continuity
