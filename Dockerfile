# Use the official Ubuntu base image
FROM ubuntu:latest

# Set the working directory
WORKDIR /app

# Install necessary dependencies
RUN apt-get update && \
    apt-get install -y wget

# Download and install GraalVM
RUN wget https://github.com/graalvm/graalvm-ce-builds/releases/download/jdk-21.0.1/graalvm-community-jdk-21.0.1_linux-x64_bin.tar.gz
RUN mkdir graalvm-jdk-21
RUN tar -zxvf graalvm-community-jdk-21.0.1_linux-x64_bin.tar.gz -C graalvm-jdk-21 --strip-components=1
RUN rm graalvm-community-jdk-21.0.1_linux-x64_bin.tar.gz

RUN mv graalvm-jdk-21/ /usr/lib/jvm/

# Set the GRAALVM_HOME environment variable
ENV GRAALVM_HOME /usr/lib/jvm/graalvm-jdk-21/

# Add GraalVM binaries to the PATH
ENV PATH $GRAALVM_HOME/bin:$PATH

# Set the JAVA_HOME environment variable
ENV JAVA_HOME $GRAALVM_HOME

# Update the PATH to include JAVA_HOME/bin
ENV PATH $JAVA_HOME/bin:$PATH

# Display GraalVM version to verify installation
# RUN java -version

# Cleanup
RUN apt-get clean && rm -rf /var/lib/apt/lists/*

# Your further instructions and application setup can go here

# Set the default command to start your application
CMD ["bash"]
