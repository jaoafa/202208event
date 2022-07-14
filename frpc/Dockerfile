FROM alpine:3

RUN mkdir /temp && \
  wget -O /temp/frp_0.44.0_linux_amd64.tar.gz https://github.com/fatedier/frp/releases/download/v0.44.0/frp_0.44.0_linux_amd64.tar.gz && \
  mkdir -p /temp/frp && \
  tar -xzf /temp/frp_0.44.0_linux_amd64.tar.gz -C /temp/frp && \
  mv /temp/frp/frp_0.44.0_linux_amd64/frpc /usr/local/bin/frpc && \
  chmod +x /usr/local/bin/frpc

WORKDIR /app

ENTRYPOINT ["/usr/local/bin/frpc", "-c", "./frpc.ini"]