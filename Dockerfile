FROM python:3.7-alpine3.8

RUN apk add --no-cache curl

WORKDIR /app
COPY . .
RUN pip install -r requirements.txt

EXPOSE 27014

ENTRYPOINT ["python", "app.py"]
