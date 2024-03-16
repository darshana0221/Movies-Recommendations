FROM python:3.12-slim

WORKDIR /app

RUN python -m pip install -r requirements.txt

COPY . .
COPY . .env

EXPOSE 8080

CMD ["streamlit", "run", "app.py"]
