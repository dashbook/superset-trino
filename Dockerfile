FROM apache/superset
USER root
RUN pip install trino
COPY --chmod=755 ./start_superset.sh /usr/bin/
USER superset
CMD ["/usr/bin/start_superset.sh"]