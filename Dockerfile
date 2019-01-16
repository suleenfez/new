FROM jenkins/jenkins:lts
USER root
RUN apt-get update && \
apt-get -y install docker
RUN apt-get install -y docker
RUN usermod -a -G docker jenkins
USER jenkins
