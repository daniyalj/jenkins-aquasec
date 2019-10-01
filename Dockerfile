FROM registry.redhat.io/openshift3/jenkins-2-rhel7:v3.10
COPY plugins.txt /plugins.txt
COPY aqua-version.sh /aqua-version.sh

USER 0
RUN curl https://get.docker.com/builds/Linux/x86_64/docker-latest.tgz | tar xvz -C /tmp/ && mv /tmp/docker/docker /usr/bin/docker
RUN chmod +x /aqua-version.sh && /aqua-version.sh && /usr/local/bin/install-plugins.sh /plugins.txt
