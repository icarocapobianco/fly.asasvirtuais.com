FROM node:lts-alpine3.18

WORKDIR ./

COPY package.json .
COPY --chown=chrome package.json ./

RUN npm install --production

COPY --chown=chrome . ./
COPY ./build ./build

ENV PORT=4000

CMD [ "npm","start" ]