#Azure CDN加速
FROM mcr.microsoft.com/dotnet/core/aspnet:2.2 AS base
# 设置默认时区
ENV TZ=Asia/Shanghai

# http://mirrors.163.com/.help/debian.html
ADD sources.list .
# 安装libgdiplus库，用于Excel导出
RUN mv sources.list /etc/apt/ && apt-get update && apt-get install -y apt-utils libgdiplus libc6-dev

WORKDIR /app
EXPOSE 80
EXPOSE 443