# Use the official Python image from the Docker Hub
FROM python:3.9-alpine

# Set the working directory in the container
WORKDIR /flask_app

# Copy the requirements file to the container
COPY requirements.txt .

# Install the dependencies specified in requirements.txt
RUN pip install --no-cache-dir -r requirements.txt

# Install pytest for running tests
RUN pip install --no-cache-dir pytest

# Copy the application code into the container
COPY app/ .

# Copy the test code into the container
COPY tests/ app/tests/

# Set the default command to run the application
CMD ["python", "app.py"]
