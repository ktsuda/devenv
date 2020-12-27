FROM python:3.9.1

RUN apt-get update \
    && apt-get install -y --no-install-recommends \
        vim \
    && apt-get clean autoclean \
    && apt-get autoremove -y \
    && rm -rf /var/lib/apt/lists/*

CMD ["/bin/bash"]
