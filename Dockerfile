# Use the official image as a parent image
FROM ubuntu:22.04

# Set the working directory in the container
WORKDIR /app


RUN apt-get update && \
  apt install -y curl && \
  apt install -y g++ python3.10  && \
  ln -s /usr/bin/python3.10 /usr/bin/python3 && \
  apt install -y python-is-python3  && \
  curl -sSL https://install.python-poetry.org/  | python - && \
  apt install -y cmake make git vim  && \
  apt-get install nodejs && \
  git clone https://github.com/anand-kamble/docker-trials


RUN curl -s https://ngrok-agent.s3.amazonaws.com/ngrok.asc | tee /etc/apt/trusted.gpg.d/ngrok.asc >/dev/null && \
 echo "deb https://ngrok-agent.s3.amazonaws.com buster main" | tee /etc/apt/sources.list.d/ngrok.list && apt update && apt install ngrok  && \
 git clone https://github.com/anand-kamble/LLM-experiments/ && \
 cd LLM-experiments/Ollama/ &&\
 curl https://ollama.ai/install.sh | sh
 

# RUN ngrok config add-authtoken 2bhKSvCIlebyj6MK5eIsbCKWWqL_yVCFAadegfCRRHhsP42r