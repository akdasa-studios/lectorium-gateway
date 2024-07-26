FROM nginx:1.27.0-bookworm
LABEL org.opencontainers.image.description "Gateway for the Lectorium project"

# Copy the nginx configuration files
WORKDIR /akd-studios/lectorium/services/gateway
COPY . .

# Run nginx
CMD ["nginx", "-c", "/akd-studios/lectorium/services/gateway/lectorium-root.conf", "-g", "daemon off;"]
