FROM jenkins/jenkins:lts-jdk11
USER root
RUN apt update
RUN jenkins-plugin-cli --plugins ec2:2.0.7 \
    && jenkins-plugin-cli --plugins git:5.2.0 \
    && jenkins-plugin-cli --plugins docker-plugin:1.4 \
    && jenkins-plugin-cli --plugins octopusdeploy:4.0.0
VOLUME [ "/var/jenkins_home" ]
