FROM python:3.8-alpine

COPY requirements.txt requirements.txt
COPY . /app
WORKDIR /app

EXPOSE 5000
ARG DEV=true
RUN pip install -r requirements.txt

COPY . .

CMD [ "python3", "-m", "flask", "run", "--host=0.0.0.0"]

