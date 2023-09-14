{{- define "test.labels" -}}
app: nginx-{{ randNumeric 4}}
{{- end }}


{{- define "test.container1" -}}
{{- with .Values.myContainer1 }}
containers:
  - name: {{ .name }}
    image: {{ .image }}
    ports: 
      containerPort:
      {{- range .containerPort }}
      - {{ . }}
      {{- end }}
{{- end }}
{{- end }}


{{- define "test.container2" -}}
{{- with .Values.myContainer2 }}
containers:
  - name: {{ .name }}
    image: {{ .image }}
    ports: 
      containerPort:
      {{- range .containerPort }}
      - {{ . }}
      {{- end }}
{{- end }}
{{- end }}