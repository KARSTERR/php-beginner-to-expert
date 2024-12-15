# PHP Beginner to Expert

This repository is designed to teach PHP from the beginner level to the expert level. It contains various examples and exercises to help you learn and practice PHP.

## Table of Contents

- [Introduction](#introduction)
- [Getting Started](#getting-started)
- [Directory Structure](#directory-structure)
- [Prerequisites](#prerequisites)
- [Installation](#installation)
- [Docker Setup](#docker-setup)
  - [Building the Docker Image](#building-the-docker-image)
  - [Running the Docker Container](#running-the-docker-container)
  - [Stopping and Cleaning Up](#stopping-and-cleaning-up)
- [Usage](#usage)
- [Contributing](#contributing)
- [License](#license)

## Introduction

This repository is a comprehensive guide for learning PHP. It is divided into multiple sections, each focusing on different aspects of PHP programming.

## Getting Started

Follow the instructions below to get started with this repository.

## Prerequisites

- PHP installed on your machine
- A web server such as Apache or Nginx
- A database server such as MySQL
- Docker and Docker Compose installed on your machine

## Installation

1. Clone the repository:
    ```sh
    git clone https://github.com/KARSTERR/php-beginner-to-expert.git
    ```
2. Navigate to the project directory:
    ```sh
    cd php-beginner-to-expert
    ```

## Docker Setup

This project includes a `Dockerfile` and `docker-compose.yml` file to easily set up and run the environment using Docker.

### Building the Docker Image

1. Ensure Docker is running on your machine.
2. Build the Docker image with the following command:
    ```sh
    docker build -t php-beginner-to-expert .
    ```
    This command will create an image named `php-beginner-to-expert` based on the `Dockerfile` in the project directory.

### Running the Docker Container

1. Start the container using Docker Compose:
    ```sh
    docker-compose up -d
    ```
    This command:
    - Starts the container in detached mode.
    - Automatically sets up the services defined in the `docker-compose.yml` file.

2. Visit the following address in your browser:
    ```
    http://localhost:8080
    ```
    (Change the port in the `docker-compose.yml` file if necessary.)

### Stopping and Cleaning Up

To stop the running container:
```sh
docker-compose down
```
This command stops and removes the container but does not delete the created image.

To clean up by removing the created image:
```sh
docker rmi php-beginner-to-expert
```

## Usage

1. Start your web server and navigate to the project directory.
2. Open your browser and go to `http://localhost/php-beginner-to-expert` (or use the port defined in your Docker setup).

## Contributing

Contributions are welcome! Please read the [contributing guidelines](CONTRIBUTING.md) first.

## License

This project is licensed under the MIT License - see the [LICENSE](LICENSE) file for details.
