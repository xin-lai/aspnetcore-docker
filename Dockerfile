#Azure CDN加速
FROM mcr.microsoft.com/dotnet/aspnet:9.0 AS base
# 设置默认时区
ENV TZ=Asia/Shanghai

RUN apt-get update \
    && apt-get install -y --no-install-recommends \
        zlib1g \
		libgdiplus \
        libc6-dev \
		ca-certificates \
		fontconfig \
		fontconfig-config \
		fonts-dejavu-core \
		libbsd0 \
		libexpat1 \
		libfontconfig1 \
		libfontenc1 \
		libfreetype6 \
		libjpeg62-turbo \
		libpng16-16 \
		libx11-6 \
		libx11-data \
		libxau6 \
		libxcb1 \
		libxdmcp6 \
		libxext6 \
		libxrender1 \
		ucf \
		x11-common \
		xfonts-75dpi \
		xfonts-base \
		xfonts-encodings \
		xfonts-utils \
     && rm -rf /var/lib/apt/lists/*

COPY /simsun.ttc /usr/share/fonts/simsun.ttc

WORKDIR /app
EXPOSE 80
EXPOSE 443
