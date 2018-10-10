#!/usr/bin/env bash

helm install --name alfresco-admin-app \
    --set image.repository=quay.io/alfresco/alfresco-admin-app \
    --set ingress.hostName=apa-aps2dev.envalfresco.com \
    ./helm/alfresco-adf-app
