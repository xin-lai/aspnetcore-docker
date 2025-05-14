#Azure CDN加速
FROM mcr.microsoft.com/dotnet/aspnet:9.0 AS base
# 设置默认时区
ENV TZ=Asia/Shanghai

# 安装libgdiplus库，用于Excel、Pdf导出
RUN apt-get update && apt-get install -y apt-utils libgdiplus libc6-dev libjpeg62-turbo libxrender1 xfonts-75dpi xfonts-base

# 安装fontconfig库，用于Pdf导出
RUN apt-get update && apt-get install -y fontconfig

RUN ln -s /usr/lib/libgdiplus.so /lib/x86_64-linux-gnu/libgdiplus.so
RUN apt-get install -y --no-install-recommends zlib1g fontconfig libfreetype6 libx11-6 libxext6 libxrender1 wget gdebi
RUN wget https://github.com/wkhtmltopdf/wkhtmltopdf/releases/download/0.12.5/wkhtmltox_0.12.5-1.stretch_amd64.deb
RUN gdebi --n wkhtmltox_0.12.5-1.stretch_amd64.deb
RUN ln -s /usr/local/lib/libwkhtmltox.so /usr/lib/libwkhtmltox.so

COPY /simsun.ttc /usr/share/fonts/simsun.ttc

WORKDIR /app
EXPOSE 80
EXPOSE 443
