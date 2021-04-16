#Version 0.2
ARG server_env
ARG base_image_version
# 基础镜像
# FROM csighub.tencentyun.com/tbaas_${server_env}/node-baseimage:${base_image_version}
FROM ccr.ccs.tencentyun.com/tbaas.private/node-baseimage:1.0
# 维护者信息
ARG pipeline_start_user_name
MAINTAINER $pipeline_start_user_name}

ARG working_space=/data/workspace
WORKDIR ${working_space}

ARG target_project
ADD ${target_project}.tar.gz ./
