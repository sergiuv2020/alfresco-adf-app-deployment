alfresco-adf-app
================
A Helm chart for a generic Alfresco ADF frontend application

Current chart version is `2.1.4`

Source code can be found [here](https://www.alfresco.com)

## Chart Requirements

| Repository | Name | Version |
|------------|------|---------|
| https://activiti.github.io/activiti-cloud-helm-charts | common | 1.1.28 |

## Chart Values

| Key | Type | Default | Description |
|-----|------|---------|-------------|
| env.APP_CONFIG_AUTH_TYPE | string | `"OAUTH"` |  |
| global.gateway.domain | string | `"REPLACEME"` |  |
| global.gateway.host | string | `"activiti-cloud-gateway.{{ .Values.global.gateway.domain }}"` |  |
| global.gateway.http | bool | `true` |  |
| global.gateway.tlsacme | bool | `false` |  |
| global.keycloak.extraEnv | string | `""` |  |
| global.keycloak.host | string | `"activiti-keycloak.{{ .Values.global.gateway.domain }}"` |  |
| global.keycloak.path | string | `"/auth"` |  |
| global.keycloak.realm | string | `"alfresco"` |  |
| global.keycloak.resource | string | `"activiti"` |  |
| global.keycloak.url | string | `""` |  |
| global.registryPullSecrets | list | `[]` |  |
| image.internalPort | string | `nil` |  |
| image.pullPolicy | string | `"IfNotPresent"` |  |
| image.repository | string | `"quay.io/alfresco/alfresco-adf-app"` |  |
| image.tag | string | `"latest"` |  |
| ingress.annotations."ingress.kubernetes.io/ssl-redirect" | string | `"false"` |  |
| ingress.annotations."kubernetes.io/ingress.class" | string | `"nginx"` |  |
| ingress.annotations."nginx.ingress.kubernetes.io/cors-allow-headers" | string | `"X-Forwarded-For, X-Forwarded-Proto, X-Forwarded-Port, X-Forwarded-Prefix, Authorization, Content-Type"` |  |
| ingress.annotations."nginx.ingress.kubernetes.io/enable-cors" | string | `"true"` |  |
| ingress.annotations."nginx.ingress.kubernetes.io/x-forwarded-prefix" | string | `"true"` |  |
| ingress.defaultHostNameEnabled | bool | `true` |  |
| ingress.enabled | bool | `true` |  |
| ingress.hostName | string | `nil` |  |
| ingress.path | string | `"/{{ .Chart.Name }}"` |  |
| livenessProbe.failureThreshold | int | `40` |  |
| livenessProbe.initialDelaySeconds | int | `60` |  |
| livenessProbe.periodSeconds | int | `15` |  |
| livenessProbe.successThreshold | int | `1` |  |
| livenessProbe.timeoutSeconds | int | `4` |  |
| probePath | string | `"/"` |  |
| readinessProbe.failureThreshold | int | `5` |  |
| readinessProbe.initialDelaySeconds | int | `20` |  |
| readinessProbe.periodSeconds | int | `15` |  |
| readinessProbe.successThreshold | int | `1` |  |
| readinessProbe.timeoutSeconds | int | `3` |  |
| registryPullSecrets | list | `[]` |  |
| replicaCount | int | `1` |  |
| resources.limits.cpu | string | `"500m"` |  |
| resources.limits.memory | string | `"1024Mi"` |  |
| resources.requests.cpu | string | `"200m"` |  |
| resources.requests.memory | string | `"256Mi"` |  |
| service.port | int | `80` |  |
| service.type | string | `"ClusterIP"` |  |
