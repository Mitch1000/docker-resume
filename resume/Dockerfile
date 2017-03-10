FROM node:6

ENV TZ=America/Toronto
ENV LANG=en_CA.utf8
ENV REPO=angular-resume
ENV BRANCH=master

WORKDIR /usr/src/app

RUN  apt-get update && \
     apt-get install -y \
                              vim \
                              git \
                              curl \
 			      xz-utils \
  && cd /usr/src/ \
  && git clone git://github.com/Mitch1000/angular-resume.git \
  && cd $REPO \ 
  && git checkout $BRANCH \
  && git pull origin $BRANCH \
  && cp -r /usr/src/$REPO/* /usr/src/app/ \
  && rm -r /usr/src/$REPO/ \
  && cd /usr/src/app/ \
  && npm start 

COPY docker-entrypoint.sh /
    
RUN cd /usr/src/app/ && \
    chmod a+x /docker-entrypoint.sh

EXPOSE 3001

ENTRYPOINT ["/docker-entrypoint.sh"]
