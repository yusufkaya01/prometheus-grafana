#!/bin/bash


echo -e "\033[1;31m
⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀
⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀
⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⣠⣄⠀⠀⠀⠀⠀⠀⣠⣄⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀
⠀⠀⠀⠀⠀⠀⠀⠀⠀⠚⠻⠿⡇⠀⠀⠀⠀⢸⠿⠟⠓⠀⠀⠀⠀⠀⠀⠀⠀⠀
⠀⠀⠀⠀⠀⠀⣠⣴⣾⣿⣶⣦⡀⢀⣤⣤⡀⢀⣴⣶⣿⣷⣦⣄⠀⠀⠀⠀⠀⠀
⠀⠀⠀⠀⠀⣴⣿⣿⣿⣿⣿⣿⡇⢸⣿⣿⡇⢸⣿⣿⣿⣿⣿⣿⣦⠀⠀⠀⠀⠀
⠀⠀⠀⠀⠘⠋⣉⡉⠙⠛⢿⣿⡇⢸⣿⣿⡇⢸⣿⡿⠛⠋⢉⣉⠙⠃⠀⠀⠀⠀
⠀⠀⢀⣤⣾⡛⠛⠛⠻⢷⣤⡙⠃⢸⣿⣿⡇⠘⢋⣤⣾⡟⠛⠛⠛⠷⣤⡀⠀⠀
⠀⢀⣾⣿⣿⡇⠀⠀⠀⠀⠙⣷⠀⠘⠛⠛⠃⠀⣾⣿⣿⣿⠀⠀⠀⠀⠈⢷⡀⠀
⠀⢸⡇⠈⠉⠀⠀⠀⠀⠀⠀⢸⡆⢰⣿⣿⡆⢰⡇⠀⠉⠁⠀⠀⠀⠀⠀⢸⡇⠀
⠀⠸⣧⠀⠀⠀⠀⠀⠀⠀⢀⡾⠀⠀⠉⠉⠀⠀⢷⡀⠀⠀⠀⠀⠀⠀⠀⣼⠇⠀
⠀⠀⠙⢷⣄⣀⠀⠀⣀⣤⡾⠁⠀⠀⠀⠀⠀⠀⠈⢷⣤⣀⠀⠀⣀⣠⡾⠋⠀⠀
⠀⠀⠀⠀⠉⠛⠛⠛⠋⠁⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠈⠙⠛⠛⠛⠉⠀⠀⠀⠀
⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀
⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀\033[0m

\033[1;35m
+------------------+
|  MONITORING      |
|  Prometheus      |
|  Grafana         |
+------------------+
\033[1;34m
Version: 1.0.1\033[0m

Welcome to seamless installation of Prometheus and Grafana setup! 🎉
*with node exporter for sure :D 

For more info, visit my GitHub and LinkedIn profiles:
\033[1;36mGitHub: https://github.com/yusufkaya01\033[0m
\033[1;36mLinkedIn: https://www.linkedin.com/in/yusufkayatr96\033[0m

------------------------------------------------------------------
Please provide the following details for your .env file:
"

# Prompt for Grafana credentials (with default values)
echo -e "\033[1;34m🧑‍💼 Enter Grafana Admin Username (GF_SECURITY_ADMIN_USER) [default: admin]: \033[0m"
read GF_SECURITY_ADMIN_USER
GF_SECURITY_ADMIN_USER=${GF_SECURITY_ADMIN_USER:-admin}

echo -e "\033[1;34m🔑 Enter Grafana Admin Password (GF_SECURITY_ADMIN_PASSWORD) [default: admin]: \033[0m"
read -s GF_SECURITY_ADMIN_PASSWORD
GF_SECURITY_ADMIN_PASSWORD=${GF_SECURITY_ADMIN_PASSWORD:-admin}

# Prompt for image versions
echo -e "\033[1;34m🐳 Enter Prometheus Image Version (PROMETHEUS_IMAGE_VERSION) [default: v3.2.0]: \033[0m"
read PROMETHEUS_IMAGE_VERSION
PROMETHEUS_IMAGE_VERSION=${PROMETHEUS_IMAGE_VERSION:-v3.2.0}

echo -e "\033[1;34m🐳 Enter Node Exporter Image Version (NODE_EXPORTER_IMAGE_VERSION) [default: v1.8.2]: \033[0m"
read NODE_EXPORTER_IMAGE_VERSION
NODE_EXPORTER_IMAGE_VERSION=${NODE_EXPORTER_IMAGE_VERSION:-v1.8.2}

echo -e "\033[1;34m🐳 Enter Grafana Image Version (GRAFANA_IMAGE_VERSION) [default: 11.5.2-ubuntu]: \033[0m"
read GRAFANA_IMAGE_VERSION
GRAFANA_IMAGE_VERSION=${GRAFANA_IMAGE_VERSION:-11.5.2-ubuntu}

# Generate .env file with user inputs
echo -e "\033[1;32m📝 Generating your .env file with the details provided... \033[0m"
echo "################################# Prometheus and Grafana #################################
# Prometheus config
PROMETHEUS_CONFIG_PATH=/etc/prometheus/prometheus.yml

# Grafana credentials
GF_SECURITY_ADMIN_USER=$GF_SECURITY_ADMIN_USER
GF_SECURITY_ADMIN_PASSWORD=$GF_SECURITY_ADMIN_PASSWORD

# Image versions
PROMETHEUS_IMAGE_VERSION=$PROMETHEUS_IMAGE_VERSION
NODE_EXPORTER_IMAGE_VERSION=$NODE_EXPORTER_IMAGE_VERSION
GRAFANA_IMAGE_VERSION=$GRAFANA_IMAGE_VERSION" > .env

echo -e "\033[1;32m✅ Your .env file has been generated successfully! \033[0m"

echo "******************************************************************"

# Create directories for volumes
echo -e "\033[1;33m📂 Creating directories for container volumes... \033[0m"
mkdir -p ./grafana-volume ./prometheus-volume

echo "------------------------------------------------------------------"

# Set permissions to 775 for the directories
echo -e "\033[1;33m🔒 Setting permissions to 775 for the created directories... \033[0m"
chmod 775 ./grafana-volume ./prometheus-volume

echo "******************************************************************"

# Run Docker Compose in detached mode
echo -e "\033[1;33m🚀 Running Docker Compose to start the containers in detached mode... \033[0m"
docker compose up -d

echo -e "\033[1;32m🎉 Docker Compose has successfully started the containers in detached mode! \033[0m"

echo "******************************************************************"
