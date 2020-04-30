FROM avastsoftware/perl_critic:latest

RUN yum -y install bash ca-certificates coreutils jq git

COPY "entrypoint.sh" "/entrypoint.sh"
RUN chmod +x /entrypoint.sh

ENTRYPOINT ["/entrypoint.sh"]
