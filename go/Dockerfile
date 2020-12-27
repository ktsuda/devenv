FROM golang:1.13.5

ENV GOOS=linux \
  GOARCH=amd64

RUN apt-get update \
    && apt-get install -y --no-install-recommends \
      vim \
    && apt-get clean autoclean \
    && apt-get autoremove -y \
    && rm -rf /var/lib/apt/lists/*

CMD ["/bin/bash"]
