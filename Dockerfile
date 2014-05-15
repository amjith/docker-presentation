FROM base

ENV TEST_ENV true
ADD test_file /

RUN apt-get update
RUN apt-get install -y fortune cowsay

ENV PATH $PATH:/usr/games
CMD fortune | cowsay
