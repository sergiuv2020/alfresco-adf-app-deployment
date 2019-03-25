# alfresco-adf-app-deployment

Helm chart to deploy a generic ADF frontend application from its Docker image

For alfresco-modeling-app:

```
helm install --name alfresco-modeling-app \
  --set image.repository=quay.io/alfresco/alfresco-modeling-app \
  ./helm/alfresco-adf-app
```

For alfresco-admin-app:

```
helm install --name alfresco-admin-app \
  --set image.repository=quay.io/alfresco/alfresco-admin-app \
  ./helm/alfresco-adf-app
```

Some scripts are provided for APS2 apps:

```
ENV_URL=http://aps2test.envalfresco.com \
  ./install-alfresco-{admin,modeling,content,process-workspace,digital-workspace}-app.sh
```
