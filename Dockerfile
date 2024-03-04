FROM selenium/standalone-chrome

# Install additional dependencies for your Java GUI application
RUN apt-get update && \
    apt-get install -y \
    <additional-package1> \
    <additional-package2> \
    && rm -rf /var/lib/apt/lists/*

# Set the working directory
WORKDIR /usr/local/umleditor

# Copy the JAR file to the container
COPY ./umleditor.jar .

# Set the entrypoint command
CMD ["java", "-jar", "umleditor.jar", "--gui"]
