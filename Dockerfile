FROM ubuntu
RUN apt-get update && apt-get install -y openssh-client curl
COPY setup.sh .
RUN chmod +x setup.sh
ENTRYPOINT ["/setup.sh"]
