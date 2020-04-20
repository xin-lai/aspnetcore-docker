#Azure CDN加速
FROM mcr.microsoft.com/dotnet/core/aspnet:3.1-buster-slim AS base
# 设置默认时区
ENV TZ=Asia/Shanghai