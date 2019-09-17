# jenkins-aquasec
Automated install of aquasec plugin on containerized Jenkins

To run this on OpenShift:

```
oc new-build https://github.com/daniyalj/jenkins-aquasec -e SCANNER_VERSIO=3.0.17 -e MICROSCANNER_VERSION=1.0.7 --to docker-registry.default.svc:5000/openshift/jenkins:ext-plugins
```
