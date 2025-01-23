FROM  ubuntu


RUN apt update && apt install -y curl  
RUN curl -fsSL https://deb.nodesource.com/setup_lts.x | bash -  
RUN apt install -y nodejs  


COPY package.json package.json
COPY package-lock.json package-lock.json

RUN npm i 
COPY server.js server.js



ENTRYPOINT [ "node","server.js" ]