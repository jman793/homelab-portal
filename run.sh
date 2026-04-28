#!/bin/sh
set -e

BIND_ADDR="${BIND_ADDR:-0.0.0.0}"
PORT="${PORT:-8000}"
IMAGE="${IMAGE:-homelab-portal:latest}"

echo "Building ${IMAGE}..."
docker build -q -t "${IMAGE}" . > /dev/null

echo "Serving homelab-portal on http://${BIND_ADDR}:${PORT}"
exec docker run --rm -p "${BIND_ADDR}:${PORT}:80" --name homelab-portal "${IMAGE}"
