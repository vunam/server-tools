FROM fr3nd/collectd
WORKDIR /usr/src/app
COPY collectd/docker-plugin/requirements.txt ./
RUN apt-get update && apt-get install -y python-setuptools && easy_install -U pip
RUN pip install -r requirements.txt