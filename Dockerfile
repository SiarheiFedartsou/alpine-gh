FROM alpine:3.14.2


WORKDIR /ghcli

RUN wget https://github.com/cli/cli/releases/download/v2.4.0/gh_2.4.0_linux_386.tar.gz -O ghcli.tar.gz && \
    tar --strip-components=1 -xf ghcli.tar.gz && \
    rm -rf ghcli.tar.gz 
ENV PATH="/ghcli/bin:$PATH"
ENTRYPOINT ["gh"]
