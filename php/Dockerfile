ARG PHP_IMAGE_VERSION

FROM php:${PHP_IMAGE_VERSION}
#RUN echo "deb http://mirrors.aliyun.com/debian/ buster main non-free contrib \n \
#deb-src http://mirrors.aliyun.com/debian/ buster main non-free contrib \n \
#deb http://mirrors.aliyun.com/debian-security buster/updates main \n \
#deb-src http://mirrors.aliyun.com/debian-security buster/updates main \n \
#deb http://mirrors.aliyun.com/debian/ buster-updates main non-free contrib \n \
#deb-src http://mirrors.aliyun.com/debian/ buster-updates main non-free contrib \n \
#deb http://mirrors.aliyun.com/debian/ buster-backports main non-free contrib \n \
#deb-src http://mirrors.aliyun.com/debian/ buster-backports main non-free contrib" > /etc/apt/sources.list \

RUN sed -i "s@http://deb.debian.org@http://mirrors.aliyun.com@g" /etc/apt/sources.list \
    && rm -Rf /var/lib/apt/lists/* \
    && /bin/cp /usr/share/zoneinfo/Asia/Shanghai /etc/localtime \
    && echo 'Asia/Shanghai' > /etc/timezone

# docs: https://github.com/mlocati/docker-php-extension-installer
ADD https://github.com/mlocati/docker-php-extension-installer/releases/latest/download/install-php-extensions /usr/local/bin/

# 安装 composer：需要依赖 => bcmath | gd | zip
RUN chmod +x /usr/local/bin/install-php-extensions \
    && install-php-extensions \
    bcmath \
    calendar \
    exif \
    gd \
    gettext \
    intl \
    mcrypt \
    pcntl \
    pspell \
    shmop \
    sockets \
    sysvmsg \
    sysvsem \
    sysvshm \
    tidy \
    xdebug \
    xsl \
    zip \
    mongodb-^1.10

RUN install-php-extensions \
    redis-stable \
#    swoole-stable \
    pdo_mysql-stable \
    @composer

# Get latest Composer
COPY --from=composer:latest /usr/bin/composer /usr/bin/composer