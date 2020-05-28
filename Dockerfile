FROM alpine:3.9.6 

RUN apk update && apk upgrade && \
    apk add --no-cache git flac perl lame
    
RUN git clone https://github.com/robinbowes/flac2mp3.git --branch master --single-branch  && \
    cd flac2mp3 && git checkout tags/1.0.1 -b docker-1.0.1
    
ENV PATH="/flac2mp3:${PATH}"
