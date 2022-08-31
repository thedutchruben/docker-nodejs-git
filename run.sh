apt install git
cd /app
git clone $GIT_USER:$GIT_TOKEN@$GIT_URL .
yarn install
npm run start