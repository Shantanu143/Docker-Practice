FROM node

COPY package.json package.json
COPY package-lock.json package-lock.json

# if any new package added then install the dependency 
RUN npm i
COPY server.js server.js

ENTRYPOINT [ "node","server.js" ]