# alfresco-adf-app-deployment

Helm chart to deploy a generic ADF frontend application from its Docker image

For alfresco-modeler-app:

```
helm install --name alfresco-modeler-app \
    --set image.repository=quay.io/alfresco/alfresco-modeler-app \ 
    --set ingress.hostName=ama-aps2dev.envalfresco.com \
    ./helm/alfresco-adf-app
```

For alfresco-admin-app:

```
helm install --name alfresco-admin-app \
    --set image.repository=quay.io/alfresco/alfresco-admin-app \ 
    --set ingress.hostName=apa-aps2dev.envalfresco.com \
    ./helm/alfresco-adf-app
```
