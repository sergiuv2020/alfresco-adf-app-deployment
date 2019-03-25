#!/usr/bin/env bash

[[ -z "${APP_NAME}" ]] && echo APP_NAME is unset && exit 1

GATEWAY_HOST=${GATEWAY_HOST:-host.docker.internal}
RELEASE_NAME=${RELEASE_NAME:-${APP_NAME}}
CHART=./helm/alfresco-adf-app

helm dependency update ${CHART}
helm upgrade --install --wait \
  --set ingress.path="/${APP_NAME}" \
  --set ingress.defaultHostNameEnabled=false \
  --set global.gateway.host="${GATEWAY_HOST}" \
  --set global.keycloak.host="${GATEWAY_HOST}" \
  ${HELM_OPTS} \
  ${RELEASE_NAME} ${CHART}
