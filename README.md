A docker file for the Scala, SBT and Node.js stack. It contains the following technologies:

- RPM to build RPM packages on a Debian based system
- Java 8
- Scala 2.11.8
- SBT 0.13.11
- Node.js 6.x
- NPM
- Yarn
- Chrome headless to run tests

Chrome headless should be run with the --no-sandbox flag, otherwise it fails with the message:


> Failed to move to new namespace: PID namespaces supported, Network namespace supported, but failed: errno = Operation not permitted


https://forums.docker.com/t/docker-user-namespaces/16885
https://developers.google.com/web/updates/2017/06/headless-karma-mocha-chai
