ARG REDIS_IMAGE_VERSION

FROM redis:${REDIS_IMAGE_VERSION}
#COPY redis.conf /usr/local/etc/redis/redis.conf
CMD [ "redis-server", "/usr/local/etc/redis.conf" ]