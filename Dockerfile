FROM node:16
WORKDIR /app
ENV GIT_URL $GIT_URL
RUN apt update && apt install git -y
CMD rm -rf /app/*  && \
    git clone $GIT_URL . && \
    yarn install && \
    npm run start
