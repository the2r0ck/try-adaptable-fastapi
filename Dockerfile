# Use an official Python runtime as a parent image
FROM python:3.10-slim

# Set the working directory in the container
WORKDIR /app
COPY . /app

# Install pip requirements
RUN pip install fastapi uvicorn

# Make port 80 available to the world outside this container
EXPOSE 80

# Define environment variable
ENV PORT 80

# Run app.py when the container launches
CMD ["uvicorn", "test_app:app", "--host", "0.0.0.0", "--port", "80"]
