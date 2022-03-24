ARG PYTHON_IMAGE_VERSION

FROM python:${PYTHON_IMAGE_VERSION}

WORKDIR /data/python

COPY requirements.txt ./
RUN /bin/cp /usr/share/zoneinfo/Asia/Shanghai /etc/localtime \
    && echo 'Asia/Shanghai' > /etc/timezone \
    && /usr/local/bin/python -m pip install --upgrade pip -i https://pypi.tuna.tsinghua.edu.cn/simple \
    && pip install --no-cache-dir -r requirements.txt -i https://pypi.tuna.tsinghua.edu.cn/simple \
    && echo "export PYTHONPATH=$PYTHONPATH:/data/python/data_center" >> /etc/profile

ENV FLASK_APP=network/app.py
ENV FLASK_RUN_HOST=0.0.0.0
EXPOSE 5000
CMD ["flask", "run"]