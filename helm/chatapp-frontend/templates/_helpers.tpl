{{- define "chatapp-frontend.fullname" -}}
{{- printf "%s" .Release.Name | trunc 63 | trimSuffix "-" -}}
{{- end -}}

{{- define "chatapp-frontend.labels" -}}
app: chatapp-nginx
release: {{ .Release.Name }}
chart: {{ .Chart.Name }}-{{ .Chart.Version | replace "+" "_" }}
{{- end -}}

{{- define "chatapp-frontend.selectorLabels" -}}
app: chatapp-nginx
{{- end -}}

