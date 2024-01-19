# Jupyter Notebook Docker Compose Setup

This repository provides a Docker Compose configuration for setting up a Jupyter Notebook environment with essential data science libraries. The Docker Compose file (`docker-compose.yaml`) defines the services and their configurations, while the Dockerfile (`./docker/jupyter/Dockerfile`) contains instructions for building the custom Jupyter Notebook image.

## Prerequisites

- Docker installed on your machine. You can download and install Docker from [here](https://www.docker.com/get-started).

## Getting Started

### Using Docker Compose

1. **Clone this repository to your local machine:**

    ```bash
    git clone https://github.com/awsalnajjar/Juypter-notebook-docker-compose.git
    cd Juypter-notebook-docker-compose
    ```

2. **Build the Docker image and start the Jupyter Notebook container:**

    ```bash
    docker-compose up --build
    ```

3. **Open your web browser and go to [http://localhost:8888](http://localhost:8888). You should see the Jupyter Notebook login page.**

4. **Copy the token from the console logs and paste it into the login page to access the Jupyter environment.**

### Using Docker Run

If you prefer to use `docker run` directly, you can use the following command:

```bash
docker build . -t <your-docker-image-name>
docker run -p 8888:8888 -v $(pwd)/work:/home/jovyan <your-docker-image-name> start-notebook.sh --NotebookApp.token=
