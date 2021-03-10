# Build the manager binary
FROM quay.io/operator-framework/helm-operator:v1.3.2

### Required OpenShift Labels
LABEL name="Wordpress Operator" \
      vendor="Brads Barbells" \
      version="v0.0.1" \
      release="1" \
      summary="This is an example of a wordpress helm operator." \
      description="This operator will deploy wordpress to the cluster."

ENV HOME=/opt/helm
COPY watches.yaml ${HOME}/watches.yaml
COPY helm-charts  ${HOME}/helm-charts
WORKDIR ${HOME}
