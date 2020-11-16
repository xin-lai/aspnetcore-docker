# 说明
本库用于构建项目中使用的aspnetcore的运行时公共基础镜像，同时提供了腾讯云公共镜像和Docker Hub公共镜像以供国内外使用。


[![Build Status](https://dev.azure.com/xinlaiopencode/aspnetcore-docker/_apis/build/status/xin-lai.aspnetcore-docker?branchName=latest)](https://dev.azure.com/xinlaiopencode/aspnetcore-docker/_build/latest?definitionId=8&branchName=latest)

**Docker相关知识，具体见本人书籍以及公众号文章：**
[《Docker+Kubernetes应用开发与快速上云》](http://product.dangdang.com/28528278.html)

## 目的
加快镜像构建和拉取速度，加速CI\CD构建以及提高开发体验。

## 注意事项

- 时区默认设置为东八区，见“ENV TZ=Asia/Shanghai”
- 默认安装了libgdiplus等库，以便支持Excel导入导出
- 目前提供了腾讯云的公共镜像和hub.docker的公共镜像，大家可以按需选择

## 公共镜像地址
目前已提供腾讯云公共镜像和DockerHub公共镜像地址：
- ccr.ccs.tencentyun.com/magicodes/aspnetcore-runtime
- ccr.ccs.tencentyun.com/magicodes/aspnetcore-sdk
- ccr.ccs.tencentyun.com/magicodes/netcore-sdk
- ccr.ccs.tencentyun.com/magicodes/netcore-runtime
- magicodes/aspnetcore-runtime

## 构建说明

已使用海外构建加快构建速度，不再使用163包源。腾讯云公共镜像使用Azure DevOps进行自动构建和推送，具体见文件“azure-pipelines.yml”，Docker hub则使用其自带的构建服务，具体见：https://hub.docker.com/repository/docker/magicodes/aspnetcore-runtime


## 镜像标签说明

| 标签名称     |      说明      |
|----------|:-------------:|
| latest |最新镜像，当前为5.0 |
| 2.2 | Asp.Net Core 2.2 |
| 2.2withfonts | Asp.Net Core 2.2 （包含字体）|
| 3.0 | Asp.Net Core 3.0 |
| 3.1 | Asp.Net Core 3.1 |
| 5.0 | Asp.Net 5.0 |

例如：
> ccr.ccs.tencentyun.com/magicodes/aspnetcore-runtime:5.0
> ccr.ccs.tencentyun.com/magicodes/aspnetcore-sdk:5.0
> ccr.ccs.tencentyun.com/magicodes/netcore-sdk:5.0
> ccr.ccs.tencentyun.com/magicodes/netcore-runtime:5.0

## 联系我们

> #### 订阅号

关注“麦扣聊技术”订阅号可以获得最新文章、教程、文档

> #### QQ群

- 编程交流群<85318032>

- 产品交流群<897857351>

> #### 文档官网&官方博客

- 文档官网：<https://docs.xin-lai.com/>
- 博客：<http://www.cnblogs.com/codelove/>


> #### 其他开源库

- <https://github.com/xin-lai>
- <https://gitee.com/magicodes>