FROM airhacks/glassfish
COPY ./target/streams.war ${DEPLOYMENT_DIR}
