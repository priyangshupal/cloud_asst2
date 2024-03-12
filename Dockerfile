# Use the official Python image as the base image
FROM python:3.9-slim

# Set the working directory inside the container
WORKDIR /app


# Copy the requirements file into the container
COPY requirements.txt .

# Install Flask and other dependencies
RUN pip install --no-cache-dir -r requirements.txt

# Copy the app source code into the container
COPY . .

# Expose port 5000 (the default Flask port)
EXPOSE 5000

# Run the Flask app
CMD ["flask", "run", "--host", "0.0.0.0"]