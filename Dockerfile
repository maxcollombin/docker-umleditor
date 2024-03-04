FROM openjdk:11

# Install xvfb, x11-apps, and libxtst6
RUN apt-get update && \
    apt-get install -y xvfb x11-apps libxtst6

# Set the working directory
WORKDIR /usr/local/umleditor

# Copy the JAR file to the container
COPY ./umleditor/umleditor.jar .

# Set the DISPLAY environment variable
ENV DISPLAY=:99

# Run the Java application directly
CMD Xvfb :99 -screen 0 1024x768x24 > /dev/null 2>&1 & java -jar umleditor.jar --gui
