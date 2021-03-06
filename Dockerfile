FROM ruby:2.5
RUN ruby --version
RUN apt-get update && \
    apt-get install cmake -y

RUN gem install plusbump --pre

RUN mkdir -p /repo
WORKDIR /repo
VOLUME /repo

ENTRYPOINT ["plusbump"]
CMD ["--help"]
