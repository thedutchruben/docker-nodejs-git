FROM node:16
WORKDIR /app
ENV GIT_URL $GIT_URL
RUN apt update && apt install -y 
RUN apt-get update && apt-get install curl gnupg -y \
    && curl --location --silent https://dl-ssl.google.com/linux/linux_signing_key.pub | apt-key add - \
    && sh -c 'echo "deb [arch=amd64] http://dl.google.com/linux/chrome/deb/ stable main" >> /etc/apt/sources.list.d/google.list' \
    && apt-get update \
    && apt-get install google-chrome-stable -y --no-install-recommends \
    && rm -rf /var/lib/apt/lists/* \
    && apt update  \
    && apt install chromium chromium-l10n -y
CMD git clone $GIT_URL /project && \
    mv /project/* . && \
    rm -rf /project/* && \
    yarn install && \
    npm run start
