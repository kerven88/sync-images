echo "镜像版本查询中，请稍等。。。。。"  
echo "docker.io:" >> images.yaml
echo "  images:" >> images.yaml
# echo "    llody/udocker:" >> images.yaml
# skopeo list-tags --tls-verify=false  docker://docker.io/llody/udocker | grep -v alpha | grep -v beta | grep -v rc | grep -v amd64 | grep -v ppc64le | grep -v arm64 | grep -v arm | grep -v s390x | grep -v SNAPSHOT | grep -v debug | grep -v master | grep -v main | grep -v \} | grep -v \] | grep -v \{ | grep -v Repository | grep -v Tags | grep -v dev | grep -v g | grep -v 0.8 | grep -v '-'| awk -F '"' '{print "    - "$2}' >> images.yaml
# echo "    calico/cni:" >> images.yaml
# skopeo list-tags --tls-verify=false  docker://docker.io/calico/cni | grep '"v' | awk '/v3/ {flag=1} flag' | grep -v -E 'alpha|beta|rc|amd64|ppc64le|arm64|arm|s390x|SNAPSHOT|debug|master|main|\}|\]|\{|Repository|Tags|dev|g|version|-' | awk -F '"' '{print $2}' | sort -V | awk -F. '$1 == "v3" && ($2 > 10 || ($2 == 10 && $3 > 0)) {print "    - " $0}' >> images.yaml
# echo "    calico/node:" >> images.yaml
# skopeo list-tags --tls-verify=false  docker://docker.io/calico/node | grep '"v' | awk '/v3/ {flag=1} flag' | grep -v -E 'alpha|beta|rc|amd64|ppc64le|arm64|arm|s390x|SNAPSHOT|debug|master|main|\}|\]|\{|Repository|Tags|dev|g|version|-' | awk -F '"' '{print $2}' | sort -V | awk -F. '$1 == "v3" && ($2 > 10 || ($2 == 10 && $3 > 0)) {print "    - " $0}' >> images.yaml
# echo "    calico/pod2daemon-flexvol:" >> images.yaml
# skopeo list-tags --tls-verify=false  docker://docker.io/calico/pod2daemon-flexvol | grep '"v' | awk '/v3/ {flag=1} flag' | grep -v -E 'alpha|beta|rc|amd64|ppc64le|arm64|arm|s390x|SNAPSHOT|debug|master|main|\}|\]|\{|Repository|Tags|dev|g|version|-' | awk -F '"' '{print $2}' | sort -V | awk -F. '$1 == "v3" && ($2 > 10 || ($2 == 10 && $3 > 0)) {print "    - " $0}' >> images.yaml
# echo "    calico/kube-controllers:" >> images.yaml
# skopeo list-tags --tls-verify=false  docker://docker.io/calico/kube-controllers | grep '"v' | awk '/v3/ {flag=1} flag' | grep -v -E 'alpha|beta|rc|amd64|ppc64le|arm64|arm|s390x|SNAPSHOT|debug|master|main|\}|\]|\{|Repository|Tags|dev|g|version|-' | awk -F '"' '{print $2}' | sort -V | awk -F. '$1 == "v3" && ($2 > 10 || ($2 == 10 && $3 > 0)) {print "    - " $0}' >> images.yaml
# echo "    flannel/flannel:" >> images.yaml
# skopeo list-tags --tls-verify=false  docker://docker.io/flannel/flannel | grep -v alpha | grep -v beta | grep -v rc | grep -v amd64 | grep -v ppc64le | grep -v arm64 | grep -v arm | grep -v s390x | grep -v SNAPSHOT | grep -v debug | grep -v master | grep -v main | grep -v \} | grep -v \] | grep -v \{ | grep -v Repository | grep -v Tags | grep -v dev | grep -v g | grep -v '-'| awk -F '"' '{print "    - "$2}' | sort -V  >> images.yaml
# echo "    flannel/flannel-cni-plugin:" >> images.yaml
# skopeo list-tags --tls-verify=false  docker://docker.io/flannel/flannel-cni-plugin | grep -v alpha | grep -v beta | grep -v rc | grep -v amd64 | grep -v ppc64le | grep -v arm64 | grep -v arm | grep -v s390x | grep -v SNAPSHOT | grep -v debug | grep -v master | grep -v main | grep -v \} | grep -v \] | grep -v \{ | grep -v Repository | grep -v Tags | grep -v dev | grep -v g | grep -v '-'| awk -F '"' '{print "    - "$2}' | sort -V >> images.yaml
# echo "    nacos/nacos-server:" >> images.yaml
# skopeo list-tags --tls-verify=false  docker://docker.io/nacos/nacos-server | grep '"v' | awk '/v1/ {flag=1} flag' | grep -v -E 'alpha|beta|rc|amd64|ppc64le|arm64|arm|s390x|SNAPSHOT|debug|master|main|\}|\]|\{|Repository|Tags|dev|g' | awk -F '"' '{print $2}' | sort -V | awk -F. '$1 == "v2" && ($2 > 0 || ($2 == 0 && $3 > 0)) {print "    - " $0}'  >> images.yaml
# echo "    apache/skywalking-java-agent:" >> images.yaml
# skopeo list-tags --tls-verify=false  docker://docker.io/apache/skywalking-java-agent | grep -v alpha | grep -v beta | grep -v rc | grep -v amd64 | grep -v ppc64le | grep -v arm64 | grep -v arm | grep -v s390x | grep -v SNAPSHOT | grep -v debug | grep -v master | grep -v main | grep -v \} | grep -v \] | grep -v \{ | grep -v Repository | grep -v Tags | grep -v dev | grep -v g | awk -F '"' '{print "    - "$2}' | sort -V >> images.yaml
# echo "    apache/skywalking-ui:" >> images.yaml
# skopeo list-tags --tls-verify=false  docker://docker.io/apache/skywalking-ui | grep -v alpha | grep -v beta | grep -v rc | grep -v amd64 | grep -v ppc64le | grep -v arm64 | grep -v arm | grep -v s390x | grep -v SNAPSHOT | grep -v debug | grep -v master | grep -v main | grep -v \} | grep -v \] | grep -v \{ | grep -v Repository | grep -v Tags | grep -v dev | grep -v g | awk -F '"' '{print "    - "$2}' | sort -V >> images.yaml
# echo "    apache/skywalking-base:" >> images.yaml
# skopeo list-tags --tls-verify=false  docker://docker.io/apache/skywalking-base | grep -v alpha | grep -v beta | grep -v rc | grep -v amd64 | grep -v ppc64le | grep -v arm64 | grep -v arm | grep -v s390x | grep -v SNAPSHOT | grep -v debug | grep -v master | grep -v main | grep -v \} | grep -v \] | grep -v \{ | grep -v Repository | grep -v Tags | grep -v dev | grep -v g | awk -F '"' '{print "    - "$2}' | sort -V >> images.yaml
# echo "    apache/skywalking-oap-server:" >> images.yaml
# skopeo list-tags --tls-verify=false  docker://docker.io/apache/skywalking-oap-server | grep -v alpha | grep -v beta | grep -v rc | grep -v amd64 | grep -v ppc64le | grep -v arm64 | grep -v arm | grep -v s390x | grep -v SNAPSHOT | grep -v debug | grep -v master | grep -v main | grep -v \} | grep -v \] | grep -v \{ | grep -v Repository | grep -v Tags | grep -v dev | grep -v g | awk -F '"' '{print "    - "$2}' | sort -V >> images.yaml
# echo "    busybox:" >> images.yaml
# skopeo list-tags --tls-verify=false  docker://docker.io/busybox | grep -v alpha | grep -v beta | grep -v rc | grep -v amd64 | grep -v ppc64le | grep -v arm64 | grep -v arm | grep -v s390x | grep -v SNAPSHOT | grep -v debug | grep -v master | grep -v main | grep -v \} | grep -v \] | grep -v \{ | grep -v Repository | grep -v Tags | grep -v dev | grep -v g | grep -v '-' | awk -F '"' '{print $2}' | awk -F '.' '($1 > 1 || ($1 == 1 && $2 > 27)) && /^[0-9.]+$/ {print "    - " $0}' >> images.yaml
# echo "    redis:" >> images.yaml
# skopeo list-tags --tls-verify=false docker://redis | grep -v alpha | grep -v beta | grep -v rc | grep -v amd64 | grep -v ppc64le | grep -v arm64 | grep -v arm | grep -v s390x | grep -v SNAPSHOT | grep -v debug | grep -v master | grep -v main | grep -v \} | grep -v \] | grep -v \{ | grep -v Repository | grep -v Tags | grep -v dev | grep -v g | grep -v '-' | awk -F '"' '{print $2}' | awk -F '.' '$1 >= 5 && /^[0-9.]+$/ {print "    - " $0}' >> images.yaml
# echo "    python:" >> images.yaml
# skopeo list-tags --tls-verify=false docker://python | grep -v alpha | grep -v beta | grep -v rc | grep -v amd64 | grep -v ppc64le | grep -v arm64 | grep -v arm | grep -v s390x | grep -v SNAPSHOT | grep -v debug | grep -v master | grep -v main | grep -v \} | grep -v \] | grep -v \{ | grep -v Repository | grep -v Tags | grep -v dev | grep -v g | grep -v '-' | awk -F '"' '{print $2}' | awk -F '.' '($1 > 3 || ($1 == 3 && $2 > 7)) && /^[0-9.]+$/ {print "    - " $0}' >> images.yaml
# echo "    golang:" >> images.yaml
# skopeo list-tags --tls-verify=false docker://golang | grep -v alpha | grep -v beta | grep -v rc | grep -v amd64 | grep -v ppc64le | grep -v arm64 | grep -v arm | grep -v s390x | grep -v SNAPSHOT | grep -v debug | grep -v master | grep -v main | grep -v \} | grep -v \] | grep -v \{ | grep -v Repository | grep -v Tags | grep -v dev | grep -v g | grep -v '-' | awk -F '"' '{print $2}' | awk -F '.' '($1 > 1 || ($1 == 1 && $2 > 17)) && /^[0-9.]+$/ {print "    - " $0}' >> images.yaml
# echo "    gitlab/gitlab-runner:" >> images.yaml
# skopeo list-tags --tls-verify=false docker://gitlab/gitlab-runner | grep -v alpha | grep -v beta | grep -v rc | grep -v amd64 | grep -v ppc64le | grep -v arm64 | grep -v arm | grep -v s390x | grep -v SNAPSHOT | grep -v debug | grep -v master | grep -v main | grep -v \} | grep -v \] | grep -v \{ | grep -v Repository | grep -v Tags | grep -v dev | grep -v g | grep -v '-' | awk -F '"' '{print $2}' | grep -E '^v[0-9]+\.[0-9]+\.[0-9]+$' | awk -F '[v.]' '$2 >= 14 {print "    - " $0}' >> images.yaml
# echo "    docker:" >> images.yaml
# skopeo list-tags --tls-verify=false docker://docker | grep -v alpha | grep -v beta | grep -v rc | grep -v amd64 | grep -v ppc64le | grep -v arm64 | grep -v arm | grep -v s390x | grep -v SNAPSHOT | grep -v debug | grep -v master | grep -v main | grep -v \} | grep -v \] | grep -v \{ | grep -v Repository | grep -v Tags | grep -v dev | grep -v g | grep -v '-'| awk -F '"' '{print $2}' | awk -F '.' '$1 >= 20  {print "    - " $0}' >> images.yaml
# echo "    traefik:" >> images.yaml
# skopeo list-tags --tls-verify=false docker://traefik | grep -v alpha | grep -v beta | grep -v rc | grep -v amd64 | grep -v ppc64le | grep -v arm64 | grep -v arm | grep -v s390x | grep -v SNAPSHOT | grep -v debug | grep -v master | grep -v main | grep -v \} | grep -v \] | grep -v \{ | grep -v Repository | grep -v Tags | grep -v dev | grep -v g | grep -v '-' | awk -F '"' '{print $2}' | grep -E '^v[0-9]+\.[0-9]+\.[0-9]+$' | awk -F '[v.]' '($2 > 2) || ($2 == 2 && $3 > 6) {print "    - " $0}' >> images.yaml
# echo "    kylemanna/openvpn:" >> images.yaml
# skopeo list-tags --tls-verify=false docker://kylemanna/openvpn | grep -v alpha | grep -v beta | grep -v rc | grep -v amd64 | grep -v ppc64le | grep -v arm64 | grep -v arm | grep -v s390x | grep -v SNAPSHOT | grep -v debug | grep -v master | grep -v main | grep -v \} | grep -v \] | grep -v \{ | grep -v Repository | grep -v Tags | grep -v dev | grep -v g | grep -v '-'| awk -F '"' '{print "    - "$2}' >> images.yaml
echo "    nginx/nginx-prometheus-exporter:" >> images.yaml
skopeo list-tags --tls-verify=false  docker://nginx/nginx-prometheus-exporter | grep -v alpha | grep -v beta | grep -v rc | grep -v amd64 | grep -v ppc64le | grep -v arm64 | grep -v arm | grep -v s390x | grep -v SNAPSHOT | grep -v debug | grep -v master | grep -v main | grep -v \} | grep -v \] | grep -v \{ | grep -v Repository | grep -v Tags | grep -v dev | grep -v g | grep -v '-'| awk -F '"' '{print $2}' | awk -F '.' '$1 >= 1  {print "    - " $0}' |sort -V >> images.yaml
echo "docker.elastic.co:" >> images.yaml
echo "  images:" >> images.yaml
# echo "    elasticsearch/elasticsearch:" >> images.yaml
# skopeo list-tags --tls-verify=false  docker://docker.elastic.co/elasticsearch/elasticsearch | grep -v alpha | grep -v beta | grep -v rc | grep -v amd64 | grep -v ppc64le | grep -v arm64 | grep -v arm | grep -v s390x | grep -v SNAPSHOT | grep -v debug | grep -v master | grep -v main | grep -v \} | grep -v \] | grep -v \{ | grep -v Repository | grep -v Tags | grep -v dev | grep -v g | grep -v '-'| awk -F '"' '{print $2}' | awk -F '.' '$1 >= 8  {print "    - " $0}' | sort -V >> images.yaml
# echo "    kibana/kibana:" >> images.yaml
# skopeo list-tags --tls-verify=false  docker://docker.elastic.co/kibana/kibana | grep -v alpha | grep -v 8.10.0 | grep -v beta | grep -v rc | grep -v amd64 | grep -v ppc64le | grep -v arm64 | grep -v arm | grep -v s390x | grep -v SNAPSHOT | grep -v debug | grep -v master | grep -v main | grep -v \} | grep -v \] | grep -v \{ | grep -v Repository | grep -v Tags | grep -v dev | grep -v g | grep -v '-'| awk -F '"' '{print $2}' | awk -F '.' '$1 >= 8  {print "    - " $0}' >> images.yaml
echo "    logstash/logstash:" >> images.yaml
skopeo list-tags --tls-verify=false  docker://docker.elastic.co/logstash/logstash | grep -v alpha | grep -v 8.10.4 | grep -v beta | grep -v rc | grep -v amd64 | grep -v ppc64le | grep -v arm64 | grep -v arm | grep -v s390x | grep -v SNAPSHOT | grep -v debug | grep -v master | grep -v main | grep -v \} | grep -v \] | grep -v \{ | grep -v Repository | grep -v Tags | grep -v dev | grep -v g | grep -v '-'| awk -F '"' '{print $2}' | awk -F '.' '$1 >= 7  {print "    - " $0}'  >> images.yaml
# echo "    beats/filebeat:" >> images.yaml
# skopeo list-tags --tls-verify=false  docker://docker.elastic.co/beats/filebeat | grep -v alpha | grep -v beta | grep -v rc | grep -v amd64 | grep -v ppc64le | grep -v arm64 | grep -v arm | grep -v s390x | grep -v SNAPSHOT | grep -v debug | grep -v master | grep -v main | grep -v \} | grep -v \] | grep -v \{ | grep -v Repository | grep -v Tags | grep -v dev | grep -v g | grep -v '-'| awk -F '"' '{print $2}' | awk -F '.' '$1 >= 7  {print "    - " $0}' >> images.yaml
echo "    beats/heartbeat:" >> images.yaml
skopeo list-tags --tls-verify=false  docker://docker.elastic.co/beats/heartbeat | grep -v alpha | grep -v beta | grep -v rc | grep -v amd64 | grep -v ppc64le | grep -v arm64 | grep -v arm | grep -v s390x | grep -v SNAPSHOT | grep -v debug | grep -v master | grep -v main | grep -v \} | grep -v \] | grep -v \{ | grep -v Repository | grep -v Tags | grep -v dev | grep -v g | grep -v '-'| awk -F '"' '{print $2}' | awk -F '.' '$1 >= 7  {print "    - " $0}' >> images.yaml
# echo "    beats/packetbeat:" >> images.yaml
# skopeo list-tags --tls-verify=false  docker://docker.elastic.co/beats/packetbeat | grep -v alpha | grep -v beta | grep -v rc | grep -v amd64 | grep -v ppc64le | grep -v arm64 | grep -v arm | grep -v s390x | grep -v SNAPSHOT | grep -v debug | grep -v master | grep -v main | grep -v \} | grep -v \] | grep -v \{ | grep -v Repository | grep -v Tags | grep -v dev | grep -v g | grep -v '-'| awk -F '"' '{print $2}' | awk -F '.' '$1 >= 7  {print "    - " $0}' >> images.yaml
# echo "    beats/auditbeat:" >> images.yaml
# skopeo list-tags --tls-verify=false  docker://docker.elastic.co/beats/auditbeat | grep -v alpha | grep -v beta | grep -v rc | grep -v amd64 | grep -v ppc64le | grep -v arm64 | grep -v arm | grep -v s390x | grep -v SNAPSHOT | grep -v debug | grep -v master | grep -v main | grep -v \} | grep -v \] | grep -v \{ | grep -v Repository | grep -v Tags | grep -v dev | grep -v g | grep -v '-'| awk -F '"' '{print $2}' | awk -F '.' '$1 >= 7  {print "    - " $0}' >> images.yaml
# echo "    beats/journalbeat:" >> images.yaml
# skopeo list-tags --tls-verify=false  docker://docker.elastic.co/beats/journalbeat | grep -v alpha | grep -v beta | grep -v rc | grep -v amd64 | grep -v ppc64le | grep -v arm64 | grep -v arm | grep -v s390x | grep -v SNAPSHOT | grep -v debug | grep -v master | grep -v main | grep -v \} | grep -v \] | grep -v \{ | grep -v Repository | grep -v Tags | grep -v dev | grep -v g | grep -v '-'| awk -F '"' '{print $2}' | awk -F '.' '$1 >= 7  {print "    - " $0}' >> images.yaml
# echo "    beats/metricbeat:" >> images.yaml
# skopeo list-tags --tls-verify=false  docker://docker.elastic.co/beats/metricbeat | grep -v alpha | grep -v beta | grep -v rc | grep -v amd64 | grep -v ppc64le | grep -v arm64 | grep -v arm | grep -v s390x | grep -v SNAPSHOT | grep -v debug | grep -v master | grep -v main | grep -v \} | grep -v \] | grep -v \{ | grep -v Repository | grep -v Tags | grep -v dev | grep -v g | grep -v '-'| awk -F '"' '{print $2}' | awk -F '.' '$1 >= 7  {print "    - " $0}' >> images.yaml
# echo "    apm/apm-server:" >> images.yaml
# skopeo list-tags --tls-verify=false  docker://docker.elastic.co/apm/apm-server | grep -v alpha | grep -v beta | grep -v rc | grep -v amd64 | grep -v ppc64le | grep -v arm64 | grep -v arm | grep -v s390x | grep -v SNAPSHOT | grep -v debug | grep -v master | grep -v main | grep -v \} | grep -v \] | grep -v \{ | grep -v Repository | grep -v Tags | grep -v dev | grep -v g | grep -v '-'| awk -F '"' '{print $2}' | awk -F '.' '$1 >= 7  {print "    - " $0}' >> images.yaml
# echo "    app-search/app-search:" >> images.yaml
# skopeo list-tags --tls-verify=false  docker://docker.elastic.co/app-search/app-search | grep -v alpha | grep -v beta | grep -v rc | grep -v amd64 | grep -v ppc64le | grep -v arm64 | grep -v arm | grep -v s390x | grep -v SNAPSHOT | grep -v debug | grep -v master | grep -v main | grep -v \} | grep -v \] | grep -v \{ | grep -v Repository | grep -v Tags | grep -v dev | grep -v g | grep -v '-'| awk -F '"' '{print "    - "$2}' >> images.yaml
# echo "quay.io:" >> images.yaml
# echo "  images:" >> images.yaml
# echo "    ceph/ceph:" >> images.yaml
# skopeo list-tags --tls-verify=false  docker://quay.io/ceph/ceph | grep -v alpha | grep -v beta | grep -v rc | grep -v amd64 | grep -v ppc64le | grep -v arm64 | grep -v arm | grep -v s390x | grep -v SNAPSHOT | grep -v debug | grep -v master | grep -v main | grep -v \} | grep -v \] | grep -v \{ | grep -v Repository | grep -v Tags | grep -v dev | grep -v g | grep -v '-'| awk -F '"' '{print "    - "$2}' | sort -V >> images.yaml
# echo "    cephcsi/cephcsi:" >> images.yaml
# skopeo list-tags --tls-verify=false  docker://quay.io/cephcsi/cephcsi | grep -v alpha | grep -v v2 | grep -v unpublish | grep -v canary | grep -v v1 | grep -v ca | grep -v beta | grep -v rc | grep -v amd64 | grep -v ppc64le | grep -v arm64 | grep -v arm | grep -v s390x | grep -v SNAPSHOT | grep -v debug | grep -v master | grep -v main | grep -v \} | grep -v \] | grep -v \{ | grep -v Repository | grep -v Tags | grep -v dev | grep -v g | grep -v '-'| awk -F '"' '{print "    - "$2}' | sort -V >> images.yaml
# echo "    csiaddons/k8s-sidecar:" >> images.yaml
# skopeo list-tags --tls-verify=false  docker://quay.io/csiaddons/k8s-sidecar | grep -v alpha | grep -v beta | grep -v rc | grep -v amd64 | grep -v ppc64le | grep -v arm64 | grep -v arm | grep -v s390x | grep -v SNAPSHOT | grep -v debug | grep -v master | grep -v main | grep -v \} | grep -v \] | grep -v \{ | grep -v Repository | grep -v Tags | grep -v dev | grep -v g | grep -v '-'| awk -F '"' '{print "    - "$2}' | sort -V >> images.yaml
# echo "    csiaddons/volumereplication-operator:" >> images.yaml
# skopeo list-tags --tls-verify=false  docker://quay.io/csiaddons/volumereplication-operator | grep -v alpha | grep -v beta | grep -v rc | grep -v amd64 | grep -v ppc64le | grep -v arm64 | grep -v arm | grep -v s390x | grep -v SNAPSHOT | grep -v debug | grep -v master | grep -v main | grep -v \} | grep -v \] | grep -v \{ | grep -v Repository | grep -v Tags | grep -v dev | grep -v g | grep -v '-'| awk -F '"' '{print "    - "$2}' | sort -V >> images.yaml
# echo "    prometheus/prometheus:" >> images.yaml
# skopeo list-tags --tls-verify=false  docker://quay.io/prometheus/prometheus | grep '"v' | awk '/v1/ {flag=1} flag' | grep -v -E 'alpha|beta|rc|amd64|ppc64le|arm64|arm|s390x|SNAPSHOT|debug|master|main|\}|\]|\{|Repository|Tags|dev|g|-' | awk -F '"' '{print $2}' | sort -V | awk -F. '$1 == "v2" && ($2 > 10 || ($2 == 10 && $3 > 0)) {print "    - " $0}' >> images.yaml
# echo "    prometheus/alertmanager:" >> images.yaml
# skopeo list-tags --tls-verify=false  docker://quay.io/prometheus/alertmanager | grep '"v' | awk '/v0/ {flag=1} flag' | grep -v -E 'alpha|beta|rc|amd64|ppc64le|arm64|arm|s390x|SNAPSHOT|debug|master|main|\}|\]|\{|Repository|Tags|dev|g|-' | awk -F '"' '{print $2}' | sort -V | awk -F. '$1 == "v0" && ($2 > 20 || ($2 == 20 && $3 > 0)) {print "    - " $0}' >> images.yaml
# echo "    prometheus/pushgateway:" >> images.yaml
# skopeo list-tags --tls-verify=false  docker://quay.io/prometheus/pushgateway | grep '"v' | awk '/v1/ {flag=1} flag' | grep -v -E 'alpha|beta|rc|amd64|ppc64le|arm64|arm|s390x|SNAPSHOT|debug|master|main|\}|\]|\{|Repository|Tags|dev|g|-' | awk -F '"' '{print $2}' | sort -V | awk -F. '$1 == "v1" && ($2 > 0 || ($2 == 0 && $3 > 0)) {print "    - " $0}'  >> images.yaml
# echo "    prometheus/blackbox-exporter:" >> images.yaml
# skopeo list-tags --tls-verify=false  docker://quay.io/prometheus/blackbox-exporter | grep '"v' | awk '/v0/ {flag=1} flag' | grep -v -E 'alpha|beta|rc|amd64|ppc64le|arm64|arm|s390x|SNAPSHOT|debug|master|main|\}|\]|\{|Repository|Tags|dev|g|-' | awk -F '"' '{print $2}' | sort -V | awk -F. '$1 == "v0" && ($2 > 20 || ($2 == 20 && $3 > 0)) {print "    - " $0}' >> images.yaml
# echo "    prometheus/node-exporter:" >> images.yaml
# skopeo list-tags --tls-verify=false  docker://quay.io/prometheus/node-exporter | grep '"v' | awk '/v1/ {flag=1} flag' | grep -v -E 'alpha|beta|rc|amd64|ppc64le|arm64|arm|s390x|SNAPSHOT|debug|master|main|\}|\]|\{|Repository|Tags|dev|g|-' | awk -F '"' '{print $2}' | sort -V | awk -F. '$1 == "v1" && ($2 > 0 || ($2 == 0 && $3 > 0)) {print "    - " $0}' >> images.yaml
# echo "    prometheus-operator/prometheus-config-reloader:" >> images.yaml
# skopeo list-tags --tls-verify=false  docker://quay.io/prometheus-operator/prometheus-config-reloader | grep -v alpha | grep -v beta | grep -v rc | grep -v amd64 | grep -v ppc64le | grep -v arm64 | grep -v arm | grep -v s390x | grep -v SNAPSHOT | grep -v debug | grep -v master | grep -v main | grep -v \} | grep -v \] | grep -v \{ | grep -v Repository | grep -v Tags | grep -v dev | grep -v g | grep -v '-'| awk -F '"' '{print "    - "$2}' | sort -V >> images.yaml
# echo "    prometheus-operator/prometheus-operator:" >> images.yaml
# skopeo list-tags --tls-verify=false  docker://quay.io/prometheus-operator/prometheus-operator | grep -v alpha | grep -v beta | grep -v rc | grep -v amd64 | grep -v ppc64le | grep -v arm64 | grep -v arm | grep -v s390x | grep -v SNAPSHOT | grep -v debug | grep -v master | grep -v main | grep -v \} | grep -v \] | grep -v \{ | grep -v Repository | grep -v Tags | grep -v dev | grep -v g | grep -v '-'| awk -F '"' '{print "    - "$2}' | sort -V >> images.yaml
# echo "    brancz/kube-rbac-proxy:" >> images.yaml
# skopeo list-tags --tls-verify=false  docker://quay.io/brancz/kube-rbac-proxy | grep '"v' | awk '/v0/ {flag=1} flag' | grep -v -E 'alpha|beta|rc|amd64|ppc64le|arm64|arm|s390x|SNAPSHOT|debug|master|main|\}|\]|\{|Repository|Tags|dev|g|-' | awk -F '"' '{print $2}' | sort -V | awk -F. '$1 == "v0" && ($2 > 10 || ($2 == 10 && $3 > 0)) {print "    - " $0}' >> images.yaml
# echo "    cilium/cilium:" >> images.yaml
# skopeo list-tags --tls-verify=false  docker://quay.io/cilium/cilium | grep '"v' | awk '/v1/ {flag=1} flag' | grep -v -E 'alpha|beta|rc|amd64|ppc64le|arm64|arm|s390x|SNAPSHOT|debug|master|main|\}|\]|\{|Repository|Tags|dev|g|-' | awk -F '"' '{print $2}' | sort -V | awk -F. '$1 == "v1" && ($2 > 10 || ($2 == 10 && $3 > 0)) {print "    - " $0}' >> images.yaml
# echo "    cilium/operator-generic:" >> images.yaml
# skopeo list-tags --tls-verify=false  docker://quay.io/cilium/operator-generic | grep -v alpha | grep -v v1.9.3 | grep -v beta | grep -v rc | grep -v amd64 | grep -v ppc64le | grep -v arm64 | grep -v arm | grep -v s390x | grep -v SNAPSHOT | grep -v debug | grep -v master | grep -v main | grep -v \} | grep -v \] | grep -v \{ | grep -v Repository | grep -v Tags | grep -v dev | grep -v g | grep -v '-'| awk -F '"' '{print "    - "$2}' | sort -V >> images.yaml
# echo "ghcr.io:" >> images.yaml
# echo "  images:" >> images.yaml
# echo "    wg-easy/wg-easy:" >> images.yaml
# skopeo list-tags --tls-verify=false docker://ghcr.io/wg-easy/wg-easy | grep -v alpha | grep -v 1.0 | grep -v beta | grep -v rc | grep -v amd64 | grep -v ppc64le | grep -v arm64 | grep -v arm | grep -v s390x | grep -v SNAPSHOT | grep -v debug | grep -v master | grep -v main | grep -v \} | grep -v \] | grep -v \{ | grep -v Repository | grep -v Tags | grep -v dev | grep -v g | grep -v '-'| awk -F '"' '{print "    - "$2}' | sort -V >> images.yaml
# echo "registry.k8s.io:" >> images.yaml
# echo "  images:" >> images.yaml
# echo "    etcd:" >> images.yaml
# skopeo list-tags --tls-verify=false  docker://registry.k8s.io/etcd | grep -v v | grep -v 2.0 | grep -v 2.2 | grep -v 2.3 |grep -v 3.0| grep -v alpha | grep -v beta | grep -v rc | grep -v amd64 | grep -v ppc64le | grep -v arm64 | grep -v arm | grep -v s390x | grep -v SNAPSHOT | grep -v debug | grep -v master | grep -v main | grep -v \} | grep -v \] | grep -v \{ | grep -v Repository | grep -v Tags | grep -v dev | grep -v g | grep -v '-'| awk -F '"' '{print "    - "$2}' >> images.yaml
# echo "    pause:" >> images.yaml
# skopeo list-tags --tls-verify=false  docker://registry.k8s.io/pause | grep -v alpha | grep -v 0.8 | grep -v 2.0 | grep -v 3.0 | grep -v beta | grep -v rc | grep -v amd64 | grep -v ppc64le | grep -v arm64 | grep -v arm | grep -v s390x | grep -v SNAPSHOT | grep -v debug | grep -v master | grep -v main | grep -v \} | grep -v \] | grep -v \{ | grep -v Repository | grep -v Tags | grep -v dev | grep -v g  | grep -v '-'| awk -F '"' '{print "    - "$2}' | grep -E '^[[:space:]]*-[[:space:]]*[0-9]+(\.[0-9]+)*$' >> images.yaml
# echo "    kube-proxy:" >> images.yaml
# skopeo list-tags --tls-verify=false  docker://registry.k8s.io/kube-proxy | grep '"v' | awk '/v1/ {flag=1} flag' | grep -v -E 'alpha|beta|rc|amd64|ppc64le|arm64|arm|s390x|SNAPSHOT|debug|master|main|\}|\]|\{|Repository|Tags|dev|g|-' | awk -F '"' '{print $2}' | sort -V | awk -F. '$1 == "v1" && ($2 > 16 || ($2 == 16 && $3 > 0)) {print "    - " $0}' >> images.yaml
# echo "    kube-apiserver:" >> images.yaml
# skopeo list-tags --tls-verify=false  docker://registry.k8s.io/kube-apiserver | grep '"v' | awk '/v1/ {flag=1} flag' | grep -v -E 'alpha|beta|rc|amd64|ppc64le|arm64|arm|s390x|SNAPSHOT|debug|master|main|\}|\]|\{|Repository|Tags|dev|g|-' | awk -F '"' '{print $2}' | sort -V | awk -F. '$1 == "v1" && ($2 > 16 || ($2 == 16 && $3 > 0)) {print "    - " $0}' >> images.yaml
# echo "    kube-scheduler:" >> images.yaml
# skopeo list-tags --tls-verify=false  docker://registry.k8s.io/kube-scheduler | grep '"v' | awk '/v1/ {flag=1} flag' | grep -v -E 'alpha|beta|rc|amd64|ppc64le|arm64|arm|s390x|SNAPSHOT|debug|master|main|\}|\]|\{|Repository|Tags|dev|g|-' | awk -F '"' '{print $2}' | sort -V | awk -F. '$1 == "v1" && ($2 > 16 || ($2 == 16 && $3 > 0)) {print "    - " $0}' >> images.yaml
# echo "    kube-controller-manager:" >> images.yaml
# skopeo list-tags --tls-verify=false  docker://registry.k8s.io/kube-controller-manager | grep '"v' | awk '/v1/ {flag=1} flag' | grep -v -E 'alpha|beta|rc|amd64|ppc64le|arm64|arm|s390x|SNAPSHOT|debug|master|main|\}|\]|\{|Repository|Tags|dev|g|-' | awk -F '"' '{print $2}' | sort -V | awk -F. '$1 == "v1" && ($2 > 16 || ($2 == 16 && $3 > 0)) {print "    - " $0}' >> images.yaml
# echo "    coredns/coredns:" >> images.yaml
# skopeo list-tags --tls-verify=false  docker://registry.k8s.io/coredns/coredns | grep -v alpha | grep -v beta | grep -v rc | grep -v amd64 | grep -v ppc64le | grep -v arm64 | grep -v arm | grep -v s390x | grep -v SNAPSHOT | grep -v debug | grep -v master | grep -v main | grep -v \} | grep -v \] | grep -v \{ | grep -v Repository | grep -v Tags | grep -v dev | grep -v g | grep -v '-'| awk -F '"' '{print "    - "$2}' >> images.yaml
# echo "    dns/k8s-dns-node-cache:" >> images.yaml
# skopeo list-tags --tls-verify=false  docker://registry.k8s.io/dns/k8s-dns-node-cache | grep -v alpha | grep -v beta | grep -v rc | grep -v amd64 | grep -v ppc64le | grep -v arm64 | grep -v arm | grep -v s390x | grep -v SNAPSHOT | grep -v debug | grep -v master | grep -v main | grep -v \} | grep -v \] | grep -v \{ | grep -v Repository | grep -v Tags | grep -v dev | grep -v g | grep -v '-'| awk -F '"' '{print "    - "$2}' >> images.yaml
# echo "    metrics-server/metrics-server:" >> images.yaml
# skopeo list-tags --tls-verify=false  docker://registry.k8s.io/metrics-server/metrics-server | grep -v alpha | grep -v beta | grep -v rc | grep -v amd64 | grep -v ppc64le | grep -v arm64 | grep -v arm | grep -v s390x | grep -v SNAPSHOT | grep -v debug | grep -v master | grep -v main | grep -v \} | grep -v \] | grep -v \{ | grep -v Repository | grep -v Tags | grep -v dev | grep -v g | grep -v '-'| awk -F '"' '{print "    - "$2}' >> images.yaml
# echo "    ingress-nginx/controller:" >> images.yaml
# skopeo list-tags --tls-verify=false  docker://registry.k8s.io/ingress-nginx/controller | grep -v alpha | grep -v beta | grep -v rc | grep -v amd64 | grep -v ppc64le | grep -v arm64 | grep -v arm | grep -v s390x | grep -v SNAPSHOT | grep -v debug | grep -v master | grep -v main | grep -v \} | grep -v \] | grep -v \{ | grep -v Repository | grep -v Tags | grep -v dev | grep -v g | grep -v '-'| awk -F '"' '{print "    - "$2}' >> images.yaml
# echo "    ingress-nginx/kube-webhook-certgen:" >> images.yaml
# skopeo list-tags --tls-verify=false  docker://registry.k8s.io/ingress-nginx/kube-webhook-certgen | grep -v alpha | grep -v beta | grep -v rc | grep -v amd64 | grep -v ppc64le | grep -v arm64 | grep -v arm | grep -v s390x | grep -v SNAPSHOT | grep -v debug | grep -v master | grep -v main | grep -v \} | grep -v \] | grep -v \{ | grep -v Repository | grep -v Tags | grep -v dev | grep -v g | grep -v '-'| awk -F '"' '{print "    - "$2}' >> images.yaml
# echo "    kube-state-metrics/kube-state-metrics:" >> images.yaml
# skopeo list-tags --tls-verify=false  docker://registry.k8s.io/kube-state-metrics/kube-state-metrics | grep -v alpha | grep -v beta | grep -v rc | grep -v amd64 | grep -v ppc64le | grep -v arm64 | grep -v arm | grep -v s390x | grep -v SNAPSHOT | grep -v debug | grep -v master | grep -v main | grep -v \} | grep -v \] | grep -v \{ | grep -v Repository | grep -v Tags | grep -v dev | grep -v g | grep -v '-'| awk -F '"' '{print "    - "$2}' >> images.yaml
# echo "    prometheus-adapter/prometheus-adapter:" >> images.yaml
# skopeo list-tags --tls-verify=false  docker://registry.k8s.io/prometheus-adapter/prometheus-adapter | grep -v alpha | grep -v beta | grep -v rc | grep -v amd64 | grep -v ppc64le | grep -v arm64 | grep -v arm | grep -v s390x | grep -v SNAPSHOT | grep -v debug | grep -v master | grep -v main | grep -v \} | grep -v \] | grep -v \{ | grep -v Repository | grep -v Tags | grep -v dev | grep -v g | grep -v '-'| awk -F '"' '{print "    - "$2}' >> images.yaml
# echo "    sig-storage/nfs-subdir-external-provisioner:" >> images.yaml
# skopeo list-tags --tls-verify=false  docker://registry.k8s.io/sig-storage/nfs-subdir-external-provisioner | grep -v alpha | grep -v beta | grep -v rc | grep -v amd64 | grep -v ppc64le | grep -v arm64 | grep -v arm | grep -v s390x | grep -v SNAPSHOT | grep -v debug | grep -v master | grep -v main | grep -v \} | grep -v \] | grep -v \{ | grep -v Repository | grep -v Tags | grep -v dev | grep -v g | grep -v '-'| awk -F '"' '{print "    - "$2}' >> images.yaml
# echo "    sig-storage/csi-node-driver-registrar:" >> images.yaml
# skopeo list-tags --tls-verify=false  docker://registry.k8s.io/sig-storage/csi-node-driver-registrar | grep -v alpha | grep -v beta | grep -v rc | grep -v amd64 | grep -v ppc64le | grep -v arm64 | grep -v arm | grep -v s390x | grep -v SNAPSHOT | grep -v debug | grep -v master | grep -v main | grep -v \} | grep -v \] | grep -v \{ | grep -v Repository | grep -v Tags | grep -v dev | grep -v g | grep -v '-'| awk -F '"' '{print "    - "$2}' >> images.yaml
# echo "    sig-storage/csi-provisioner:" >> images.yaml
# skopeo list-tags --tls-verify=false  docker://registry.k8s.io/sig-storage/csi-provisioner | grep -v alpha | grep -v beta | grep -v rc | grep -v amd64 | grep -v ppc64le | grep -v arm64 | grep -v arm | grep -v s390x | grep -v SNAPSHOT | grep -v debug | grep -v master | grep -v main | grep -v \} | grep -v \] | grep -v \{ | grep -v Repository | grep -v Tags | grep -v dev | grep -v g | grep -v '-'| awk -F '"' '{print "    - "$2}' >> images.yaml
# echo "    sig-storage/csi-resizer:" >> images.yaml
# skopeo list-tags --tls-verify=false  docker://registry.k8s.io/sig-storage/csi-resizer | grep -v alpha | grep -v beta | grep -v rc | grep -v amd64 | grep -v ppc64le | grep -v arm64 | grep -v arm | grep -v s390x | grep -v SNAPSHOT | grep -v debug | grep -v master | grep -v main | grep -v \} | grep -v \] | grep -v \{ | grep -v Repository | grep -v Tags | grep -v dev | grep -v g | grep -v '-'| awk -F '"' '{print "    - "$2}' >> images.yaml
# echo "    sig-storage/csi-snapshotter:" >> images.yaml
# skopeo list-tags --tls-verify=false  docker://registry.k8s.io/sig-storage/csi-snapshotter | grep -v alpha | grep -v beta | grep -v rc | grep -v amd64 | grep -v ppc64le | grep -v arm64 | grep -v arm | grep -v s390x | grep -v SNAPSHOT | grep -v debug | grep -v master | grep -v main | grep -v \} | grep -v \] | grep -v \{ | grep -v Repository | grep -v Tags | grep -v dev | grep -v g | grep -v '-'| awk -F '"' '{print "    - "$2}' >> images.yaml
# echo "    sig-storage/csi-attacher:" >> images.yaml
# skopeo list-tags --tls-verify=false  docker://registry.k8s.io/sig-storage/csi-attacher | grep -v alpha | grep -v beta | grep -v rc | grep -v amd64 | grep -v ppc64le | grep -v arm64 | grep -v arm | grep -v s390x | grep -v SNAPSHOT | grep -v debug | grep -v master | grep -v main | grep -v \} | grep -v \] | grep -v \{ | grep -v Repository | grep -v Tags | grep -v dev | grep -v g | grep -v '-'| awk -F '"' '{print "    - "$2}' >> images.yaml
# echo "    sig-storage/nfsplugin:" >> images.yaml
# skopeo list-tags --tls-verify=false  docker://registry.k8s.io/sig-storage/nfsplugin | grep -v alpha | grep -v beta | grep -v rc | grep -v amd64 | grep -v ppc64le | grep -v arm64 | grep -v arm | grep -v s390x | grep -v SNAPSHOT | grep -v debug | grep -v master | grep -v main | grep -v \} | grep -v \] | grep -v \{ | grep -v Repository | grep -v Tags | grep -v dev | grep -v g | grep -v '-'| awk -F '"' '{print "    - "$2}' >> images.yaml