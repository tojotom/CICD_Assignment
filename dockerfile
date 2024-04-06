# Use an official Python runtime as a parent image
FROM python:3.9

# Set the working directory in the container to /app
WORKDIR /app

# Copy the current directory contents into the container at /app
COPY . /app

# Install any needed packages specified in requirements.txt
RUN pip install --no-cache-dir -r requirements.txt

# Run train.py
RUN python train.py

# Make port 80 available to the world outside this container
EXPOSE 80

# The command to run when the container starts, assuming test.py outputs a score
CMD ["python", "test.py"]
