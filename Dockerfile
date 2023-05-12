FROM nikolaik/python-nodejs:python3.9-nodejs16

RUN apt update && apt upgrade -y
RUN apt install ffmpeg -y

COPY requirements.txt /requirements.txt
RUN cd /
RUN pip3 install --no-cache-dir --upgrade --requirement requirements.txt
RUN mkdir /app
WORKDIR /app
COPY start.sh /start.sh
CMD ["/bin/bash", "/start.sh"]
