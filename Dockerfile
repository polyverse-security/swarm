FROM golang

ENV GOPATH /home/mariusz/go
#ADD ./swarm /go/src/github.com/polyverse-security/swarm
COPY ./swarm /

#COPY .gitconfig /root/.gitconfig
#COPY .git-credentials /root/.git-credentials
#RUN go get -v -d github.com/polyverse-security/polyverse-router
#RUN go install github.com/polyverse-security/swarm

#COPY . /go/src/github.com/docker/swarm
#WORKDIR /go/src/github.com/docker/swarm

#ENV GOPATH /go/src/github.com/docker/swarm/Godeps/_workspace:$GOPATH
#RUN CGO_ENABLED=0 go install -v -a -tags netgo -installsuffix netgo -ldflags "-w -X github.com/docker/swarm/version.GITCOMMIT `git rev-parse --short HEAD`"

ENV SWARM_HOST :2375
EXPOSE 2375

#VOLUME $HOME/.swarm

ENTRYPOINT ["/swarm"]
CMD ["--help"]
