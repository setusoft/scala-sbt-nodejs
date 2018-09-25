A docker file for the Scala, SBT and Node.js stack. The image is derived from https://github.com/hseeberger/scala-sbt

It contains the following technologies:

- RPM to build RPM packages on a Debian based system
- Java 8
- Scala 2.12.6
- SBT 1.2.3
- Node.js 10.x
- NPM
- Yarn
- Chrome headless to run tests
- Sonar Scanner 3.2.x to test code quality with SonarQube

Chrome headless should be run with the --no-sandbox flag, otherwise it fails with the message:


> Failed to move to new namespace: PID namespaces supported, Network namespace supported, but failed: errno = Operation not permitted


https://forums.docker.com/t/docker-user-namespaces/16885
https://developers.google.com/web/updates/2017/06/headless-karma-mocha-chai
