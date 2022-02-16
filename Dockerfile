FROM alpine

MAINTAINER Abhishek Arya "abhishekarya102@gmail.com"

RUN apk add python3

RUN apk add --update py-pip

COPY . /app

WORKDIR /app

RUN pip install -r requirements.txt

EXPOSE 5000

CMD [ "flask", "run", "--host=0.0.0.0" ]
