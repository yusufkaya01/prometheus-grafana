# Prometheus & Grafana Stack Automation

This repository automates the setup of Prometheus, Grafana, and Node Exporter for seamless system monitoring. With a custom Bash script, it handles the configuration of the Prometheus and Grafana services, creates necessary directories for persistent storage, and runs Docker Compose to set up the containers.

## Features:
- Automated Prometheus and Grafana setup
- Customizable configurations via an `.env` file
- Easy directory setup for persistent storage
- Docker Compose-based deployment
- User-friendly prompts to gather credentials and configuration options

## Prerequisites:
- Docker
- Docker Compose
- Bash

## How It Works:
1. The Bash script prompts the user for necessary credentials and image versions.
2. It generates a `.env` file with the user's input.
3. It creates directories for persistent storage and sets the correct permissions.
4. It runs Docker Compose to start the Prometheus, Grafana, and Node Exporter containers.

## Setup Instructions:
1. Clone the repository:
    ```bash
    git clone https://github.com/yourusername/prometheus-grafana.git
    cd prometheus-grafana
    ```
2. Run the setup script:
    ```bash
    bash setup.sh
    ```
3. The script will prompt you for necessary details such as:
    - Grafana admin username and password
    - Prometheus, Node Exporter, and Grafana image versions
4. After the script finishes, your Prometheus and Grafana stack will be running in Docker containers with persistent storage.

## Accessing Grafana:
- Open your browser and navigate to: `http://localhost:3000`
- Log in with the credentials you provided during the setup (default: `admin` / `admin` if you accepted defaults).

## Accessing Prometheus:
- Open your browser and navigate to: `http://localhost:9090`

## Customization:
You can modify the `.env` file to adjust configurations such as:
- Prometheus config path
- Grafana credentials
- Image versions for Prometheus, Node Exporter, and Grafana

## Docker Compose Version:
This setup uses Docker Compose to manage the containers. Ensure your version supports the features used in this repository.

## Contributing:
Feel free to open issues or submit pull requests to improve this setup!

## License:
This project is licensed under the MIT License.

## About:
- GitHub: [https://github.com/yourusername](https://github.com/yourusername)
- LinkedIn: [https://www.linkedin.com/in/yourprofile](https://www.linkedin.com/in/yourprofile)
