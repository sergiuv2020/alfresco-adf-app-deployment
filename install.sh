#!/usr/bin/env bash

[[ -z "${APP_NAME}" ]] && echo APP_NAME is unset && exit 1

SSO_HOST=${GATEWAY_HOST:-host.docker.internal}
GATEWAY_HOST=${GATEWAY_HOST:-localhost}
RELEASE_NAME=${RELEASE_NAME:-${APP_NAME}}
CHART=./helm/alfresco-adf-app

helm dependency update ${CHART}
helm upgrade --install --wait \
  --set ingress.path="/${APP_NAME}" \
  --set global.gateway.host="${GATEWAY_HOST}" \
  --set global.keycloak.host="${SSO_HOST}" \
  --set env.APP_CONFIG_AUTH_TYPE="OAUTH" \
  ${HELM_OPTS} \
  ${RELEASE_NAME} ${CHART}
