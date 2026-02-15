FROM jupyter/datascience-notebook:latest

USER root
RUN apt-get update && apt-get install -y \
    postgresql-client \
    && rm -rf /var/lib/apt/lists/*

USER ${{NB_UID}}
COPY requirements.txt .
RUN pip install --no-cache-dir -r requirements.txt

WORKDIR /home/jovyan/work
