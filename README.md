# Ollama and Open WebUI Setup

This repository provides a setup to run the Ollama language model server with Open WebUI, using Docker and Docker Compose.

## Prerequisites

- Docker: Make sure you have Docker installed. You can follow the instructions [here](https://docs.docker.com/get-docker/).
- NVIDIA GPU (Optional but recommended): If you want to run the models on a GPU, ensure you have installed [NVIDIA Docker](https://docs.nvidia.com/datacenter/cloud-native/container-toolkit/install-guide.html).

## Setup

### Change Model

To change the model, simply update the model name in the `Dockerfile`. For example, to pull a different model, modify this line:

```Dockerfile
RUN /bin/sh -c "ollama serve & sleep 2 && ollama pull mistral:instruct"
```

Change `mistral:instruct` to your desired model.

### Build and Run

1. Run the setup script:

   ```bash
   ./run.sh
   ```

   This script will:
   - Build the Docker image based on the `Dockerfile`.
   - Launch the Ollama and Open WebUI services using Docker Compose.

2. Access the Open WebUI interface in your browser:

   - URL: `http://localhost:3000`

3. Use the Ollama API at:

   - URL: `http://localhost:11434`

## Persistent Data

This setup uses Docker volumes to persist model and WebUI data between container runs:

- `ollama_data`: Stores Ollama model data.
- `webui_data`: Stores Open WebUI data.
