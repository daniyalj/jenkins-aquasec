FROM registry.redhat.io/openshift3/jenkins-2-rhel7:v3.11
COPY plugins.txt /plugins.txt

USER 0
RUN /usr/local/bin/install-plugins.sh /plugins.txt
