FROM ubuntu
MAINTAINER Nigieu
RUN apt update -y
RUN apt install vim wget curl -y
RUN mkdir /root/my-test
RUN mkdir /root/my-test1
RUN touch /root/my-test/jenkins.sh

LABEL "country"="USA"
LABEL "state"="illinois"
LABEL "town"="chicago"

EXPOSE 6000-9000/tcp
EXPOSE 90/tcp

ENV NOM="Nigieu"
ENV PRENOM="Christian"
ENV DEVOPS="Engineer"

ADD ./* /root/my-test/
ADD https://github.com/kemvoueric/sonar-scanner-cli/archive/refs/tags/4.6.2.2472.tar.gz /root/my-test
COPY ./* /root/my-test1/
RUN chmod +x /root/my-test/jenkins.sh
ENTRYPOINT [ "free" ]
CMD [ "-m" ]
VOLUME "/myvol"
VOLUME "/peter"


WORKDIR /root/my-test
