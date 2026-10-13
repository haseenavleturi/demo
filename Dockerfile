FROM python:3.12-slim

WORKDIR /app

COPY requirements.txt   .
COPY app.py   .

RUN python -m pip install --no-cache-dir --timeout=120 --retries=10 -r requirements.txt

EXPOSE 5005

CMD ["python", "app.py"]
