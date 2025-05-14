FROM mcr.microsoft.com/dotnet/sdk:9.0 AS base
ENV TZ=Asia/Shanghai

# 安装libgdiplus库，用于Excel、Pdf导出
RUN apt-get update && apt-get install -y apt-utils libgdiplus libc6-dev libjpeg62-turbo libxrender1 xfonts-75dpi xfonts-base

# 安装fontconfig库，用于Pdf导出
RUN apt-get update && apt-get install -y fontconfig
COPY /simsun.ttc /usr/share/fonts/simsun.ttc

WORKDIR /app