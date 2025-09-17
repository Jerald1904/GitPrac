FROM ubuntu:20.04

# Avoid interactive prompts
ENV DEBIAN_FRONTEND=noninteractive

# Install Python3
RUN apt-get update && apt-get install -y python3 python3-pip && apt-get clean

# Create app directory
WORKDIR /app

# Copy local files to container
COPY . /app

# Run the Python app
CMD ["python3", "app.py"]

