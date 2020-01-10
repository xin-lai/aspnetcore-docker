# 说明
本库用于构建项目中使用的aspnetcore的运行时公共基础镜像，默认包含时区设置、debian软件包加速以及libgdiplus等库的安装。本库签入后会自动触发构建，目前仅提供了腾讯云的公共镜像，后续将提供hub.docker的公共镜像。

## 腾讯云公共镜像
ccr.ccs.tencentyun.com/magicodes/aspnetcore-runtime


| 标签名称     |      说明      |
|----------|:-------------:|
| latest |最新镜像，当前为3.1 |
| 2.2 | Asp.Net Core Runtime 2.2 |
| 3.0 | Asp.Net Core Runtime 3.0 |
| 3.1 | Asp.Net Core Runtime 3.1 |