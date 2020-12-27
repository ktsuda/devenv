FROM ubuntu:18.04

ENV TZ='Asia/Tokyo' \
  DEBIAN_FRONTEND=noninteractive

RUN apt-get update \
  && apt-get install -y --no-install-recommends \
    tzdata \
    locales \
    build-essential \
    clang \
    cmake \
    clang-format \
    gdb \
    git \
    curl \
    vim \
    libssl-dev \
    ca-certificates \
  && apt-get clean autoclean \
  && apt-get autoremove -y \
  && rm -rf /var/lib/apt/lists/*

RUN echo "${TZ}" > /etc/timezone \
  && rm /etc/localtime \
  && ln -s /usr/share/zoneinfo/Asia/Tokyo /etc/localtime \
  && dpkg-reconfigure -f noninteractive tzdata

RUN sed -i 's/^# ja_JP.UTF-8/ja_JP.UTF-8/g' /etc/locale.gen \
    && locale-gen

CMD ["/bin/bash"]
