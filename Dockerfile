# Base image
FROM python:3.10-slim

# Set working directory
WORKDIR /app

# Copy files
COPY app.py requirements.txt /app/

# Install dependencies
RUN pip install --no-cache-dir -r requirements.txt

# Expose port 8080
EXPOSE 8080

# Run the application
CMD ["python", "app.py"]
