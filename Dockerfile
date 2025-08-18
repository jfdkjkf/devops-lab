# Use official Python base image
FROM python:3.10-slim

# Set working directory
WORKDIR /app

# Copy current folder contents into /app
COPY . /app

# Install dependencies
RUN pip install --no-cache-dir fastapi uvicorn

# Expose port 8000
EXPOSE 8000

# Run FastAPI with uvicorn
CMD ["uvicorn", "main:app", "--host", "0.0.0.0", "--port", "8000"]
