# Use official Python image
FROM python:3.12-slim

# Set working directory
WORKDIR /app

# Copy requirements first for caching
COPY requirements.txt .

# Install dependencies
RUN pip install --no-cache-dir -r requirements.txt

# Copy the rest of the app
COPY . /app

# Expose port
EXPOSE 5000

# Set environment variables for Flask
ENV FLASK_APP=hello1.py
ENV FLASK_RUN_HOST=0.0.0.0

# Default command to run
CMD ["flask", "run"]