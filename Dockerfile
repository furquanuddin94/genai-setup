# Use the latest Ollama image as the base
FROM ollama/ollama:latest

# Start the Ollama server in the background and pull the model (change model to whichever preferred)
RUN /bin/sh -c "ollama serve & sleep 2 && ollama pull mistral:instruct"

# Set the entry point to start Ollama
ENTRYPOINT ["/bin/ollama"]

# Expose the port that Ollama serves on
EXPOSE 11434

# Default command to start the Ollama service
CMD ["serve"]
