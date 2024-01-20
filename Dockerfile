FROM apache/superset
USER root
RUN pip install trino
COPY --chmod=755 ./start_superset.sh /usr/bin/
ENV SUPERSET_CONFIG_PATH /tmp/superset_config.py
USER superset
CMD ["/usr/bin/start_superset.sh"]
