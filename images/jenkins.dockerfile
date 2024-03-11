#/app /urs /lib
######STAGE: DEV #######
FROM jenkins/jenkins:latest AS dev

ENV JENKINS_USER admin
ENV JENKINS_PASS admin

USER root

RUN dnf update -y && dnf install -y 'dnf-command(config-manager)' && \
dnf config-manager --add-repo=https://download.docker.com/linux/centos/docker-ce.repo && \
dnf list docker-ce && \
dnf update && \
dnf install docker-ce --nobest -y && \
dnf clean all
RUN usermod -a -G docker jenkins

