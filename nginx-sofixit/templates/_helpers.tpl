{{- define "nginx-sofixit.redirect_port" -}}
{{- default "31443" .Values.tls.redirect_port }}
{{- end }}

{{- define "nginx-sofixit.server_port" -}}
{{- if and .Values.tls .Values.tls.key .Values.tls.cert  }}listen 443 ssl;
        ssl_certificate_key /etc/ssl/key.pem;
        ssl_certificate /etc/ssl/cert.pem;
{{- else }}listen 80;
{{- end }}
{{- end }}
