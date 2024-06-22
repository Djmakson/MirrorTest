# Select official python 3 runtime
FROM python:3.6

# LABEL 

MAINTAINER Ayodejitest

# Copy current directory into the created directory
COPY requirements.txt ./

# Creates a directory in /usr/src/app
RUN pip3 install -r requirements.txt

# Change work directory to it
WORKDIR /app

# Bundle app source- copy all other files directory and paste it into the container app directory.
COPY . ./ 

# Expose the port
EXPOSE 9000

# Start the application
CMD ["python", "main.py"]