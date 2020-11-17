FROM alpine:3.12

ENV PYTHONUNBUFFERED=1
RUN apk add --update --no-cache python3 && ln -sf python3 /usr/bin/python
RUN python3 -m ensurepip
RUN pip3 install --no-cache --upgrade pip setuptools

WORKDIR /app

COPY . /app

RUN pip install -r requirements.txt

CMD [ "python","src/app.py" ]
