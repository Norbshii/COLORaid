# Use an official Python runtime as a base image
FROM python:3.9-slim

# Set the working directory in the container to /app
WORKDIR /app

# Copy the current directory contents into the container at /app
COPY . /app

# Install any needed packages specified in requirements.txt
RUN pip install --no-cache-dir -r requirements.txt

# Make port 8000 available to the world outside this container
EXPOSE 8000

# Define environment variable for the port
ENV PORT=8000

# Run app.py when the container launches using gunicorn, bind to PORT with default fallback
CMD ["sh", "-c", "gunicorn app:app --bind 0.0.0.0:${PORT:-8000}"]
