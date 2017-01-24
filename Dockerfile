FROM golang:1.7

# Install apache 2 for testing purposes
RUN apt-get update;apt-get -y upgrade; apt-get install -y apache2

# Environment
RUN mkdir -p /proxy/src
ENV GOPATH /proxy
ENV GOBIN /usr/local/bin
WORKDIR /proxy/src

# Download the proxy project
RUN go get github.com/jpillora/go-tcp-proxy/cmd/tcp-proxy

# Adding start script
ADD run_proxy.sh /
RUN chmod a+x /run_proxy.sh

# Run the proxy
CMD /run_proxy.sh
