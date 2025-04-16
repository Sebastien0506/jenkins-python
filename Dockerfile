FROM jenkins/inbound-agent:latest

USER root

# Installation de Python 3 et pip
RUN apt-get update && \
    apt-get install -y python3 python3-pip && \
    ln -sf python3 /usr/bin/python && \
    ln -sf pip3 /usr/bin/pip

# Optionnel : définir une variable d'environnement si tu veux
ENV PYTHON_VERSION=3.10

USER jenkins

