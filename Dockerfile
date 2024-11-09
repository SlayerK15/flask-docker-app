# Use official Python runtime as the base image
FROM python:3.9-slim

# Set working directory in the container
WORKDIR /app

# Copy requirements file
COPY requirements.txt .

# Install dependencies
RUN pip install -r requirements.txt

# Copy the application code and templates
COPY app.py .
COPY templates/ templates/

# Expose port 5000
EXPOSE 5000

# Command to run the application
CMD ["python", "app.py"]