FROM nginx:1.27.2-bookworm

# ---------------------------------------------------------------------------- #
#                                   Metadata                                   #
# ---------------------------------------------------------------------------- #

LABEL org.opencontainers.image.description="Gateway for the Lectorium project"
LABEL org.opencontainers.image.source="https://github.com/akdasa-studios/lectorium"

# ---------------------------------------------------------------------------- #
#                                     Build                                    #
# ---------------------------------------------------------------------------- #

RUN apt update && apt install -y libjwt-dev libjansson-dev
WORKDIR /akd-studios/lectorium/services/gateway
COPY . .

# ---------------------------------------------------------------------------- #
#                                      Run                                     #
# ---------------------------------------------------------------------------- #

CMD ["nginx", "-c", "/akd-studios/lectorium/services/gateway/envs/dev/_root.conf", "-g", "daemon off;"]
