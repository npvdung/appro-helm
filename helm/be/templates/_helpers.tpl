{{/*
Return the name of the chart
*/}}
{{- define "be.name" -}}
{{- default .Chart.Name .Values.nameOverride | trunc 63 | trimSuffix "-" -}}
{{- end -}}

{{/*
Return the fully qualified app name.
*/}}
{{- define "be.fullname" -}}
{{- if .Values.fullnameOverride }}
{{- .Values.fullnameOverride | trunc 63 | trimSuffix "-" -}}
{{- else }}
{{- printf "%s-%s" .Release.Name (include "be.name" .) | trunc 63 | trimSuffix "-" -}}
{{- end }}
{{- end -}}
