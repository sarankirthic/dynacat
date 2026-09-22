# Thin wrapper around the official Dynacat image.
# Adds curl so the healthcheck has a reliable, known-good tool
# (the base Alpine image only ships busybox, no wget/bash/nc guaranteed).
FROM panonim/dynacat:latest

RUN apk add --no-cache curl

# ENTRYPOINT/EXPOSE are inherited from the base image:
#   EXPOSE 8080/tcp
#   ENTRYPOINT ["/app/dynacat", "--config", "/app/config/dynacat.yml"]
