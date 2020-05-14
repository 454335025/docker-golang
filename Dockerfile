#build stage
FROM golang:latest

COPY ./sources.list.stretch /etc/apt/sources.list

RUN apt-get update 

#GIT
RUN apt-get install git -y

# RUN go get -v \
#     github.com/mdempsky/gocode \
#     github.com/uudashr/gopkgs/cmd/gopkgs \
#     github.com/ramya-rao-a/go-outline \
#     github.com/acroca/go-symbols \
#     golang.org/x/tools/cmd/guru \
#     golang.org/x/tools/cmd/gorename \
#     github.com/rogpeppe/godef \
#     github.com/zmb3/gogetdoc \
#     github.com/sqs/goreturns \
#     golang.org/x/tools/cmd/goimports \
#     golang.org/x/lint/golint \
#     github.com/alecthomas/gometalinter \
#     honnef.co/go/tools/... \
#     github.com/golangci/golangci-lint/cmd/golangci-lint \
#     github.com/mgechev/revive \
#     github.com/derekparker/delve/cmd/dlv 2>&1

# RUN go get -x -d github.com/stamblerre/gocode 2>&1 \
#     && go build -o gocode-gomod github.com/stamblerre/gocode \
#     && mv gocode-gomod $GOPATH/bin/

WORKDIR /go/src

ENV SHELL /bin/bash
