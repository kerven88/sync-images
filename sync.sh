#!/bin/bash
###
 # @Author: llody 745719408@qq.com
 # @Date: 2024-06-13 09:47:43
 # @LastEditors: llody 745719408@qq.com
 # @LastEditTime: 2024-06-17 10:57:03
 # @FilePath: \K8S\组件包\skopeo\shell脚本版\skopeo.sh
 # @Description: shell版镜像同步脚本
### 

HUB_USERNAME=$1
HUB_PASSWORD=$2

hub=$3
repo="$hub/llody"


rm -rf images.yaml
bash config.sh


if [ -f images.yaml ]; then
   echo "[Start] sync......."


   sudo skopeo login --tls-verify=false -u "${HUB_USERNAME}" -p "${HUB_PASSWORD}" ${hub} \
   && sudo skopeo --tls-verify=false --insecure-policy sync --src yaml --dest docker images.yaml $repo


   echo "[End] done."

else
    echo "[Error]not found images.yaml!"
fi