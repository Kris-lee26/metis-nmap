FROM ubuntu:22.04

ENV DEBIAN_FRONTEND=noninteractive

RUN apt-get update && \
    apt-get install -y --no-install-recommends nmap python3 procps curl && \
    rm -rf /var/lib/apt/lists/*

RUN useradd -m -s /bin/bash student

COPY start.sh /usr/local/bin/start.sh
RUN chmod +x /usr/local/bin/start.sh && \
    echo "/usr/local/bin/start.sh" >> /home/student/.bashrc

USER student
WORKDIR /home/student