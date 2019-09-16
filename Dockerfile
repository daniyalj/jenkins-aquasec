FROM registry.redhat.io/openshift3/jenkins-2-rhel7:v3.11
COPY plugins.txt /plugins.txt
COPY aqua-version.sh /aqua-version.sh

USER 0

RUN chmod +x /aqua-version.sh && /aqua-version.sh /usr/local/bin/install-plugins.sh /plugins.txt
