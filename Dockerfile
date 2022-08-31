FROM node:16
WORKDIR /app
ADD 'run.sh' /scripts
ENV GIT_URL $GIT_URL
RUN apt update && apt install git -y
CMD git clone $GIT_URL . && \
    yarn install && \
    npm run start