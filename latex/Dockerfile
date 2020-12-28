FROM ubuntu:18.04

ENV DEBIAN_FRONTEND=noninteractive

RUN apt-get update \
    && apt-get install -y \
        xdvik-ja \
	evince \
	texlive-lang-cjk \
	latexmk \
	language-pack-ja \
	wget \
	xzdec \
	texlive-latex-extra \
        texlive-extra-utils \
        git \
        make \
    && apt-get clean \
    && apt-get autoremove -y \
    && rm -rf /var/lib/apt/lists/*

RUN tlmgr init-usertree
RUN kanji-config-updmap-sys ipaex

WORKDIR /work

VOLUME ["/work"]

COPY .latexmkrc /root/

CMD ["/bin/bash"]
