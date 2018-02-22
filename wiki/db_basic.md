## OLTP:on-line transaction processing
  * 要是事务处理 即插入 修改 查询和删除操作
  * 采用ER模型和面向应用的数据库设计
  * 强调数据库内存效率，强调内存各种指标的命令率，强调绑定变量，强调并发操作
  * 实时性要求高, 并发性要求高并且严格的要求事务的完整、安全性
  * small size
  * realtime
## OLAP: On-Line Analytical Processing
  * 主要是查询处理, 复杂的查询
  * 数据仓库系统，支持复杂的分析操作，侧重决策支持，并且提供直观易懂的查询结果
  * 采用星型模式或雪花模式和面向主题的数据库设计
  * large size
  
  
  
## mongodb vs mysql selection criterion
* transaction
* JSON/BSON storage
* key-value vs relational
* data size / scalability
* schemaless/schema-flexible structure

