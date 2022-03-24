#!/bin/bash

# nginx 相关目录
nginxDir='/data/nginx/html /data/nginx/logs'
# python 相关目录
pythonDir='/data/python'
# mongo 相关目录
mongoDir='/data/mongo/backup /data/mongo/data /data/mongo/logs'
# mysql 相关目录
mysqlDir='/data/mysql/backup /data/mysql/data /data/mysql/logs'
# redis 相关目录
redisDir='/data/redis/backup /data/redis/data /data/redis/logs'

mkdir -p \
$nginxDir \
$pythonDir \
$mongoDir \
$mysqlDir \
$redisDir

chmod 777 \
$nginxDir \
$pythonDir \
$mongoDir \
$mysqlDir \
$redisDir
