#Azure CDN����
FROM mcr.microsoft.com/dotnet/sdk:6.0-bullseye-slim AS base
# ����Ĭ��ʱ��
ENV TZ=Asia/Shanghai

# 安装libgdiplus库，用于Excel导出
RUN apt-get update && apt-get install -y apt-utils libgdiplus libc6-dev

# 安装fontconfig库，用于Pdf导出
RUN apt-get update && apt-get install -y fontconfig
COPY /simsun.ttc /usr/share/fonts/simsun.ttc

WORKDIR /app