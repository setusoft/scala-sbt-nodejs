FROM java:openjdk-8u72-jdk

MAINTAINER setusoft <christian.kaps@setusoft.de>

RUN curl -sL https://deb.nodesource.com/setup_6.x | bash - && \
    apt-get install -y git && \
    apt-get install -y openssl && \
    apt-get install -y bsdmainutils && \
    apt-get install -y nodejs && \
    wget -nv http://dl.bintray.com/sbt/debian/sbt-0.13.11.deb && \
    dpkg -i sbt-0.13.11.deb && \
    wget -nv http://www.scala-lang.org/files/archive/scala-2.11.8.deb && \
    dpkg -i scala-2.11.8.deb && \
    rm sbt-0.13.11.deb scala-2.11.8.deb && \
    git clone https://github.com/elasticdog/transcrypt.git ./transcrypt && \
    cd ./transcrypt && \
    ln -s ${PWD}/transcrypt /usr/local/bin/transcrypt && \
    cd .. && \
    apt-get clean

CMD sbt
