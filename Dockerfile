#Azure CDN加速
FROM mcr.microsoft.com/dotnet/aspnet:9.0 AS base
# 设置默认时区
ENV TZ=Asia/Shanghai

RUN apt-get update -y \
    && apt-get install -y --no-install-recommends \
        apt-utils \
        libgdiplus \
        libc6-dev \
        libjpeg62-turbo \
        libxrender1 \
        xfonts-75dpi \
        xfonts-base \
        fontconfig \
        zlib1g \
        libfreetype6 \
        libx11-6 \
        libxext6 \
        wget \
        gdebi \
    && apt-get clean \
    && rm -rf /var/lib/apt/lists/*

RUN wget -q https://github.com/wkhtmltopdf/wkhtmltopdf/releases/download/0.12.5/wkhtmltox_0.12.5-1.stretch_amd64.deb \
    && gdebi -n wkhtmltox_0.12.5-1.stretch_amd64.deb \
    && rm -f wkhtmltox_0.12.5-1.stretch_amd64.deb

RUN ln -sf /usr/lib/libgdiplus.so /usr/lib/gdiplus.dll \
    && ln -sf /usr/local/lib/libwkhtmltox.so /usr/lib/

COPY /simsun.ttc /usr/share/fonts/simsun.ttc

WORKDIR /app
EXPOSE 80
EXPOSE 443
