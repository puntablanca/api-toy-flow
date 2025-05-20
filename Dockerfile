# Use official Python image as base
FROM python:3.11-slim

# Set working directory
WORKDIR /app

# Copy requirements and install dependencies
COPY requirements.txt .
RUN pip install --no-cache-dir -r requirements.txt

# Copy the rest of the application
COPY . .

# Accept build arguments and set environment variables
ARG PROJECT_ID
ARG REGION
ARG SERVICE_NAME
ENV PROJECT_ID=${PROJECT_ID}
ENV REGION=${REGION}
ENV SERVICE_NAME=${SERVICE_NAME}

# Expose port
EXPOSE 8000

# Default command to run the FastAPI app with uvicorn
CMD ["uvicorn", "main:app", "--host", "0.0.0.0", "--port", "8000"] 