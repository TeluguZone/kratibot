# Don't Remove Credit @movie_file_20
# Subscribe YouTube Channel For Amazing Bot @JISSHU-BOT 
# Ask Doubt on telegram @KingVJ01

FROM python:3.12.1-slim-buster

RUN apt update && apt upgrade -y
RUN apt install git -y
COPY requirements.txt /requirements.txt

RUN cd /
RUN pip3 install -U pip && pip3 install -U -r requirements.txt
RUN mkdir /JONSNOWXBOT
WORKDIR /JONSNOWXBOT
COPY . .
CMD ["bash", "start.sh"]
