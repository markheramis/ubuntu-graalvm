# ubuntu-graalvm
## Overview
The ubuntu-graalvm project provides a Docker image with Ubuntu and GraalVM pre-installed, tailored for seamless integration into your development environment. This image is particularly useful for developers working on projects that leverage GraalVM capabilities or require a consistent Ubuntu-based environment.

## Features
- **Ubuntu Base**: The image is built on top of the latest Ubuntu release, providing a familiar and reliable Linux environment.
- **GraalVM Pre-installed**: GraalVM is included in the image, allowing you to harness the power of GraalVM without the need for additional installations.
- **Docker Ready**: Designed for easy integration into your Docker-based workflows, enabling efficient containerization of applications.

## Usage
To use this Docker image in your project, you can pull it from the Docker Hub:

```
docker pull markheramis/ubuntu-graalvm:latest
```

You can also include it in your Dockerfile:

```
FROM markheramis/ubuntu-graalvm:latest
# Your additional configuration and commands here
```

## Building the Image Locally

If you prefer to build the image locally, you can clone this repository and run the following command:

```
docker build -t markheramis/ubuntu-graalvm:latest .
```

## Contributions

Contributions to this project are welcome. Feel free to open issues, submit pull requests, or provide feedback.