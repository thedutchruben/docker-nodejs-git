FROM node:16
WORKDIR /app
ADD 'run.sh' .
ENV GIT_URL $GIT_URL

CMD sh run.sh
