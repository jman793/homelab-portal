# homelab-portal

A static landing page for the homelab Kubernetes cluster — one page of
links to in-cluster services (Grafana, ArgoCD, etc.). Plain HTML + CSS,
no framework or build step. Run it locally with `sh run.sh`, which
builds the Docker image and serves nginx on `http://localhost:8000`.
Override the bind address or port with env vars (e.g.
`BIND_ADDR=$(ipconfig getifaddr en0) sh run.sh` to expose on the LAN, or
`PORT=8080 sh run.sh` for a different port). Edit the `services` array
in `index.html` to add or change links. 
