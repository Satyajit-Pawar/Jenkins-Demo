FROM alpine:latest

# Create a file inside the container
RUN echo "Hello from MOTD" > /motd.txt

# Default command to show the file content
CMD cat /motd.txt
