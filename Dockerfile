#Azure CDN加速
FROM mcr.microsoft.com/dotnet/aspnet:5.0-buster-slim AS base
# 设置默认时区
ENV TZ=Asia/Shanghai

# 安装libgdiplus库，用于Excel导出
RUN apt-get update && apt-get install -y apt-utils libgdiplus libc6-dev

# 安装fontconfig库，用于Pdf导出
RUN apt-get update && apt-get install -y fontconfig
COPY /simsun.ttc /usr/share/fonts/simsun.ttc

WORKDIR /app
EXPOSE 80
EXPOSE 443