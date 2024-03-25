# Use the official Python image as a base image
FROM python

# Set the working directory in the container
WORKDIR /app

# Copy the current directory contents into the container at /app
COPY . /app

# Install Flask
RUN pip install --no-cache-dir flask

# Expose port 5000 to the outside world
EXPOSE 5000

# Define environment variable
ENV NAME World

# Command to run the Flask application
CMD ["python3", "app.py"]
