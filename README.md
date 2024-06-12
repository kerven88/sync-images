# sync-images

镜像同步流水线：dockrehub到阿里云镜像仓库

# 同步镜像版本

```yaml
images:
  llody/udocker:
    - tag: latest
    - tag: v1.1.1
  llody/weixin-robot:
    - tag: v1-amd64
    - tag: v1-arm64
  llody/nginx:
    - tag: v1.23.4
    - tag: v1.22.0
    - tag: v1.20
    - tag: v1.22.0-arm64
    - tag: v1.22.0-amd64
    - tag: 1.22.0-base
  llody/busybox-tools:
    - tag: v20240507
    - tag: v20240409
    - tag: v20230428
  llody/ssh-agent:
    - tag: v1
  llody/jdk:
    - tag: v11.0.11
  llody/kube-eventer:
    - tag: v1.2.6-amd64-bbf76f7-aliyun
    - tag: v1.2.6-arm64-bbf76f7-aliyun
  llody/docker:
    - tag: 20.10.7-buildx-amd64
  llody/kubectl:
    - tag: v1.15.3
  llody/metrics-server:
    - tag: v0.4.5
    - tag: v0.4.5-slim
    - tag: v0.4.0
  seataio/seata-server:
    - tag: 1.6.1
  clickhouse/clickhouse-server:
    - tag: 24.4.2.141
    - tag: 23.8.14.6
    - tag: 22.8.16.32
  nacos/nacos-server:
    - tag: v2.3.2-slim
    - tag: v2.2.0-slim
    - tag: v2.1.2-slim
  mysql/mysql-server:
    - tag: latest
    - tag: 8.0.32-1.2.11-server
    - tag: 8.0.32
    - tag: 8.0.27
    - tag: 5.7.41-1.2.11-server
    - tag: 5.7.41
    - tag: 5.7
  redis:
    - tag: latest
    - tag: 7.0.14
    - tag: 7.0
    - tag: 6.2.7
    - tag: 6.2
    - tag: 6.0
    - tag: 5.0
  rabbitmq:
   - tag: latest
   - tag: 3.9.9-management
   - tag: 3.9.9
   - tag: 3.8.26-management
   - tag: 3.8.26
  mongo:
    - tag: latest
    - tag: 7.0.9
    - tag: 7.0
    - tag: 6
    - tag: 6.0
    - tag: 6
    - tag: 5.0
    - tag: 5
  golang:
    - tag: latest
    - tag: 1.22.4
    - tag: 1.21.4
    - tag: 1.20.4
    - tag: 1.19.4
  portainer/portainer-ce:
    - tag: latest
    - tag: 2.20.3
  elasticsearch:
    - tag: 8.9.2
    - tag: 7.9.3
    - tag: 7.17.14
    - tag: 7.17.4
  kibana:
    - tag: 8.9.2
    - tag: 7.9.3
    - tag: 7.17.14
    - tag: 7.17.4
  logstash:
    - tag: 8.9.2
    - tag: 7.9.3
    - tag: 7.17.14
    - tag: 7.17.4
  fluentd:
    - tag: 2.1.1
    - tag: 2.1.0
    - tag: 2.0.1
    - tag: 2.0.0
  fluent/fluent-bit:
    - tag: 3.0.7
    - tag: 2.2.1
    - tag: 1.9.9
  

```
