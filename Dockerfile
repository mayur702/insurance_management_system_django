# Use an official Python runtime as a base image
FROM python:3.8-slim

# Set the working directory in the container
WORKDIR /app

# Copy the current directory contents into the container
COPY . .

# Install any required dependencies
RUN pip install --no-cache-dir -r requirements.txt

# Make port 5000 available for the app to access
EXPOSE 5000

# Define environment variable
ENV NAME World

# Run the application
CMD ["python", "app.py"]
