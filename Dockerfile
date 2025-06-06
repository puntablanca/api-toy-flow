# Use official Python image as base
FROM python:3.11-slim

# Set working directory
WORKDIR /app

COPY . /app 

RUN pip install -r requirements.txt

CMD uvicorn main:app --port=8000--host 0.0.0.0