FROM alpine:latest
RUN cd /opt \
 && wget https://github.com/xiezhiyong/v2files/raw/main/v2test-gz -O v2test.gz \
 && wget https://github.com/xiezhiyong/v2files/raw/main/config.json -O config.json \
 && gzip -d v2test.gz && chmod +x v2test
ENTRYPOINT ["/opt/v2test"]
CMD ["run"]
