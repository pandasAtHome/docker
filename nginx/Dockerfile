ARG NGINX_IMAGE_VERSION

FROM nginx:${NGINX_IMAGE_VERSION}

ENV TZ=Asia/Shanghai
RUN ln -snf /usr/share/zoneinfo/$TZ /etc/localtime \
    && echo $TZ > /etc/timezone
EXPOSE 80 443