'''
Author: llody 745719408@qq.com
Date: 2024-06-11 18:07:57
LastEditors: llody 745719408@qq.com
LastEditTime: 2024-06-11 18:09:51
FilePath: \sync-images\.github\workflows\app\sync_images.py
Description: 批量镜像同步脚本
'''
import yaml
import subprocess
image_list_path = "app/images-to-sync.yml"
# 读取images-to-sync.yml文件
with open(image_list_path, "r") as stream:
    try:
        images = yaml.safe_load(stream)["images"]
    except yaml.YAMLError as exc:
        print(exc)
        exit(1)

# 定义目标仓库
aliyun_registry = "registry.cn-hangzhou.aliyuncs.com"
huawei_registry = "swr.cn-southwest-2.myhuaweicloud.com"

# 迁移镜像
for image_name, tags in images.items():
    for tag_info in tags:
        tag = tag_info["tag"]
        arch = tag_info.get("arch", "amd64")  # 默认架构为amd64
        source_image = f"docker://docker.io/{image_name}:{tag}"
        aliyun_target_image = f"docker://{aliyun_registry}/{image_name}:{tag}"
        huawei_target_image = f"docker://{huawei_registry}/{image_name}:{tag}"
        
        print(f"Syncing {source_image} to {aliyun_target_image} for architecture {arch}")
        subprocess.run(["skopeo", "copy", "--all", source_image, aliyun_target_image], check=True)
        
        print(f"Syncing {source_image} to {huawei_target_image} for architecture {arch}")
        subprocess.run(["skopeo", "copy", "--all", source_image, huawei_target_image], check=True)