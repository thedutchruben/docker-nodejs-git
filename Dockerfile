FROM node:16
WORKDIR /app
ENV GIT_URL $GIT_URL
RUN apt update && apt install -y 
RUN apt-get install -y gconf-service libasound2 libatk1.0-0 libcairo2 libcups2 libfontconfig1 libgdk-pixbuf2.0-0 libgtk-3-0 libnspr4 libpango-1.0-0 libxss1 fonts-liberation libappindicator1 li>
RUN wget https://dl.google.com/linux/direct/google-chrome-stable_current_amd64.deb
RUN dpkg -i google-chrome-stable_current_amd64.deb; apt-get -fy install
CMD rm -rf *  && \
    git clone $GIT_URL . && \
    yarn install && \
    npm run start
