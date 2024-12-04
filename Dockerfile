# Use Python 3.9 image from Docker Hub
FROM python:3.9

# Set working directory to /app
WORKDIR /app

# Copy the current directory contents into the container at /app
COPY . /app

# Install dependencies from requirements.txt
RUN pip install --no-cache-dir -r requirements.txt

# Expose port 5000
EXPOSE 5000

# Run the app when the container starts
CMD ["python", "app.py"]
