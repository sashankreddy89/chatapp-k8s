{{- define "chatapp-backend.fullname" -}}
{{- printf "%s" .Release.Name | trunc 63 | trimSuffix "-" -}}
{{- end -}}

{{- define "chatapp-backend.labels" -}}
app: chatapp-django
release: {{ .Release.Name }}
chart: {{ .Chart.Name }}-{{ .Chart.Version | replace "+" "_" }}
{{- end -}}

{{- define "chatapp-backend.selectorLabels" -}}
app: chatapp-django
{{- end -}}