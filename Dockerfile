FROM node:16
WORKDIR /app
ENV GIT_URL $GIT_URL
RUN apt update && apt install git chromium-browser -y 
CMD rm -rf *  && \
    git clone $GIT_URL . && \
    yarn install && \
    npm run start
