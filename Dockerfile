FROM quay.io/keycloak/keycloak:19.0.3

ENV KEYCLOAK_ADMIN=admin
ENV KEYCLOAK_ADMIN_PASSWORD=admin123

COPY ./themes /opt/keycloak/themes
ENTRYPOINT ["/opt/keycloak/bin/kc.sh", "start-dev"]
