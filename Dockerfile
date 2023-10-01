# i want you to create an image to upload the .html file and all the folders that it may use to be hosted using apache2

# Step 1: Specify the base image
FROM ubuntu:latest

# Step 2: Run some commands to install additional programs
RUN apt-get update
RUN apt-get install -y apache2

# Step 3: Copy the files from the host to the container
COPY . /var/www/html

# Step 4: Specify the port number that the container should expose
EXPOSE 80

# Step 5: Specify the command to run on container start
CMD ["/usr/sbin/apache2ctl", "-D", "FOREGROUND"]

