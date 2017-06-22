FROM java:openjdk-8-jdk

MAINTAINER setusoft <christian.kaps@setusoft.de>

ENV DISPLAY :99.0
ENV CHROME_BIN /usr/bin/google-chrome

RUN curl -sL https://deb.nodesource.com/setup_6.x | bash - && \
    apt-get install -y rpm && \
    apt-get install -y git && \
    apt-get install -y openssl && \
    apt-get install -y bsdmainutils && \
    apt-get install -y nodejs && \
    wget -nv http://dl.bintray.com/sbt/debian/sbt-0.13.11.deb && \
    dpkg -i sbt-0.13.11.deb && \
    wget -nv http://www.scala-lang.org/files/archive/scala-2.11.8.deb && \
    dpkg -i scala-2.11.8.deb && \
    rm sbt-0.13.11.deb scala-2.11.8.deb && \
    curl -sS https://dl.yarnpkg.com/debian/pubkey.gpg | apt-key add - && \
    echo "deb https://dl.yarnpkg.com/debian/ stable main" | tee /etc/apt/sources.list.d/yarn.list && \
    apt-get update && apt-get install yarn && \
    wget https://dl.google.com/linux/direct/google-chrome-stable_current_amd64.deb && \
    dpkg --unpack google-chrome-stable_current_amd64.deb && \
    apt-get install -f -y && \
    apt-get clean && \
    rm google-chrome-stable_current_amd64.deb

CMD sbt
