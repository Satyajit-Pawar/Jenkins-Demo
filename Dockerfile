FROM alpine:latest

# Create a file inside the container
RUN echo "Hello from MOTD" > test.txt

# Default command to show the file content
CMD cat test.txt
