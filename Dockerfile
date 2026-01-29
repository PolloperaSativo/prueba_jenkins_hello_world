FROM python:3.13

WORKDIR /usr/src/app

COPY script.py .

CMD ["python", "script.py"]
